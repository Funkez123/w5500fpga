# W5500 FPGA Controller

This repo contains the Vivado 2023.2 project folder for the Low Cost Ethernet Implementation using WIZnet's W5500 Module.

The top.vhdl contains an 
- External data handler
- the W5500 Controller
- SPI Master

This project was tested on the PYNQ-Z1 Board, that can be clocked 125 MHz (sys_clk), while the SPI Clock is half of the system clock

The external data handler provides payload data to be sent as a UDP packet.

The W5500 Controller establishes a UDP Socket (Port 217) on the W5500 and sends data to another receiving socket (Unicast/Broadcast). Source IP Address, Destination IP address and the W5500's MAC Address are hardcoded signals in the W5500 Finite State Machine (FSM).

