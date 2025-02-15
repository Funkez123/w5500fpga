----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.12.2024 10:35:11
-- Design Name: 
-- Module Name: ext_data_handler - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Loop-Back Test Implementation (Dynamic Buffer Handling)
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ext_data_handler is
    port (
        clk         : in  STD_LOGIC;
        rst         : in  STD_LOGIC;
        
        tdata       : out STD_LOGIC_VECTOR(7 downto 0);
        tvalid      : out STD_LOGIC;
        tlast       : out STD_LOGIC;
        tready      : in  STD_LOGIC;
        
        rdata       : in  STD_LOGIC_VECTOR(7 downto 0);
        rvalid      : in  STD_LOGIC;
        rlast       : in  STD_LOGIC;
        rready      : out STD_LOGIC
    );
end ext_data_handler;

architecture Behavioral of ext_data_handler is

    -- States for FSM
    type state_type is (IDLE, RECEIVE_HEADER, RECEIVE_DATA, SEND_DATA);
    signal current_state, next_state : state_type := IDLE;

    signal not_reset : std_logic := '1'; -- Simulation-only initialization

    signal rdata_buffer    : std_logic_vector(7 downto 0);
    signal rvalid_buffer   : std_logic := '0';
    signal rready_buffer   : std_logic := '1';
    signal rlast_buffer    : std_logic := '0';
    
    signal tdata_buffer    : std_logic_vector(7 downto 0);
    signal tvalid_buffer   : std_logic := '0';
    signal tready_buffer   : std_logic := '1';
    signal tlast_buffer    : std_logic := '0';
    
    signal header_byte_counter : integer := 0;

    component axis_data_fifo_8bit is 
        Port(
            s_axis_tdata  : in  std_logic_vector(7 downto 0);
            s_axis_tready : out std_logic;
            s_axis_tvalid : in  std_logic;
            s_axis_tlast  : in  std_logic;
            s_axis_aclk   : in  std_logic;
            s_axis_aresetn: in  std_logic;
            m_axis_tdata  : out std_logic_vector(7 downto 0);
            m_axis_tready : in  std_logic;
            m_axis_tvalid : out std_logic;
            m_axis_tlast  : out std_logic
        );
    end component;

begin

    not_reset <= not rst;

    loop_back_buffer_fifo : axis_data_fifo_8bit
        port map (
            s_axis_tdata  => rdata_buffer,
            s_axis_tready => rready_buffer,
            s_axis_tvalid => rvalid_buffer,
            s_axis_tlast  => rlast_buffer,
            s_axis_aclk   => clk,
            s_axis_aresetn=> not_reset,
            m_axis_tdata  => tdata_buffer,
            m_axis_tready => tready_buffer,
            m_axis_tvalid => tvalid_buffer,
            m_axis_tlast  => tlast_buffer 
        );

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                -- Reset all signals and FSM
                current_state       <= IDLE;
                header_byte_counter <= 0;
                rvalid_buffer       <= '0';
                rready              <= '1';
                tvalid              <= '0';
                tlast               <= '0';
            else
                case current_state is
                    when IDLE =>
                        -- Reset signals and wait for incoming data
                        tvalid        <= '0';
                        tlast         <= '0';
                        rready        <= '1';
                        header_byte_counter <= 0;

                        if rvalid = '1' then
                            current_state <= RECEIVE_HEADER;
                        end if;
    
                    when RECEIVE_HEADER => 
                        rready <= '1';
                        -- Skip the first 8 bytes (DEST_IP, PORT, Length)
                        if (rvalid = '1') then 
                            if (header_byte_counter < 7) then  
                                header_byte_counter <= header_byte_counter + 1;
                                rvalid_buffer <= '0';
                                rlast_buffer <= '0';
                            else
                                -- Start receiving actual payload data
                                current_state   <= RECEIVE_DATA;
                                
                                --in the clk cycle of the state switch, we can already receive the first byte
                                if (rvalid = '1') then
                                    rvalid_buffer <= '1';
                                    rdata_buffer  <= rdata;
                                    rlast_buffer  <= rlast;
                                else
                                    rvalid_buffer <= '0';
                                end if;
                                
                            end if;
                        end if;
                        
                        tvalid        <= '0';
                        tlast         <= '0';
                        tready_buffer <= '0';
                        
                    when RECEIVE_DATA =>
                        -- Store data in the FIFO
                        if (rvalid = '1') then
                            rvalid_buffer <= '1';
                            rdata_buffer  <= rdata;
                            rlast_buffer  <= rlast;
                        else
                            rvalid_buffer <= '0';
                        end if;
                        
                        rready <= rready_buffer;
                        
                        -- Detect end of the packet
                        if rlast = '1' then
                            current_state <= SEND_DATA;
                        end if;
                        
                        tvalid        <= '0';
                        tlast         <= '0';
                        tready_buffer <= '0';

                    when SEND_DATA =>
                        -- Read from FIFO and send data
                        
                        tvalid        <= tvalid_buffer;
                        tdata         <= tdata_buffer;
                        tlast         <= tlast_buffer;
                        tready_buffer <= tready;

                        if (tlast_buffer = '1' and tvalid_buffer = '1' and tready = '1') then
                            -- Packet fully sent, go back to IDLE
                            current_state <= IDLE;
                        end if;

                        rready        <= '0';
                        rvalid_buffer <= '0';
                        rlast_buffer  <= '0';
                        
                end case;
            end if;
        end if;
    end process;

end Behavioral;
