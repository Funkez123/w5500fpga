
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/utils_1/imports/synth_1/spi_master.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2`
^C:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/utils_1/imports/synth_1/spi_master.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
^
Command: %s
53*	vivadotcl2-
+synth_design -top top -part xc7z020clg400-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7z020Z17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7z020Z17-349h px� 
D
Loading part %s157*device2
xc7z020clg400-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
4004Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 1345.734 ; gain = 439.770
h px� 
�
synthesizing module '%s'638*oasys2
top2Q
MC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/top.vhd2
488@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	clk_wiz_02�
~C:/Users/danie/w5500StateMachine/w5500StateMachine.runs/synth_1/.Xil/Vivado-12728-DESKTOP-FEDBMRF/realtime/clk_wiz_0_stub.vhdl2
62	
clk_wiz2
	clk_wiz_02Q
MC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/top.vhd2
1558@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	clk_wiz_02�
~C:/Users/danie/w5500StateMachine/w5500StateMachine.runs/synth_1/.Xil/Vivado-12728-DESKTOP-FEDBMRF/realtime/clk_wiz_0_stub.vhdl2
158@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
w5500_state_machine2c
aC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/imports/Downloads/spimaster.vhd2
52
spi_m2
w5500_state_machine2Q
MC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/top.vhd2
1648@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
w5500_state_machine2e
aC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/imports/Downloads/spimaster.vhd2
358@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
w5500_axi_data_streamer2X
VC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/spi_streamer.vhd2
52
u_w5500_axi_data_streamer2
w5500_axi_data_streamer2e
aC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/imports/Downloads/spimaster.vhd2
1678@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
w5500_axi_data_streamer2Z
VC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/spi_streamer.vhd2
418@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
axis_data_fifo_8bit2u
sc:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/synth/axis_data_fifo_8bit.v2
532
u_payload_fifo2
axis_data_fifo_8bit2Z
VC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/spi_streamer.vhd2
848@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
axis_data_fifo_8bit2
 2w
sc:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/synth/axis_data_fifo_8bit.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
axis_data_fifo_v2_0_11_top2
 2|
xc:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/hdl/axis_data_fifo_v2_0_vl_rfs.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2:
8axis_infrastructure_v1_1_1_util_aclken_converter_wrapper2
 2�
}c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/hdl/axis_infrastructure_v1_1_vl_rfs.v2
5968@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2-
+axis_infrastructure_v1_1_1_util_axis2vector2
 2�
}c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/hdl/axis_infrastructure_v1_1_vl_rfs.v2
8058@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
+axis_infrastructure_v1_1_1_util_axis2vector2
 2
02
12�
}c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/hdl/axis_infrastructure_v1_1_vl_rfs.v2
8058@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
+axis_infrastructure_v1_1_1_util_vector2axis2
 2�
}c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/hdl/axis_infrastructure_v1_1_vl_rfs.v2
9868@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
+axis_infrastructure_v1_1_1_util_vector2axis2
 2
02
12�
}c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/hdl/axis_infrastructure_v1_1_vl_rfs.v2
9868@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
8axis_infrastructure_v1_1_1_util_aclken_converter_wrapper2
 2
02
12�
}c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/hdl/axis_infrastructure_v1_1_vl_rfs.v2
5968@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_axis2
 2@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
23568@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_cdc_sync_rst2
 2>
:C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
10598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_cdc_sync_rst2
 2
02
12>
:C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
10598@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_base2
 2@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_memory_base2
 2D
@C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_memory_base2
 2
02
12D
@C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6155h px� 
�
default block is never used226*oasys2@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
12148@Z8-226h px� 
�
default block is never used226*oasys2@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
12818@Z8-226h px� 
�
default block is never used226*oasys2@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
13038@Z8-226h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_reg_bit2
 2@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19148@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_reg_bit2
 2
02
12@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19148@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_counter_updn2
 2@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_counter_updn2
 2
02
12@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_rst2
 2@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
16268@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_rst2
 2
02
12@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
16268@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized02
 2@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized02
 2
02
12@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized12
 2@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized12
 2
02
12@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized22
 2@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized22
 2
02
12@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_base2
 2
02
12@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_axis2
 2
02
12@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
23568@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
axis_data_fifo_v2_0_11_top2
 2
02
12|
xc:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/hdl/axis_data_fifo_v2_0_vl_rfs.v2
538@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
axis_data_fifo_8bit2
 2
02
12w
sc:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/synth/axis_data_fifo_8bit.v2
538@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
axis_data_fifo_8bit2u
sc:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/synth/axis_data_fifo_8bit.v2
532
	u_rx_fifo2
axis_data_fifo_8bit2Z
VC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/spi_streamer.vhd2
988@Z8-3491h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
state2Z
VC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/spi_streamer.vhd2
1648@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

spi_header2Z
VC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/spi_streamer.vhd2
1648@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
payload_fifo_output_buffer2Z
VC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/spi_streamer.vhd2
1648@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
payload_fifo_valid2Z
VC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/spi_streamer.vhd2
1648@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
payload_fifo_tlast_buffer2Z
VC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/spi_streamer.vhd2
1648@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
tready2Z
VC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/spi_streamer.vhd2
1648@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
w5500_axi_data_streamer2
02
12Z
VC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/spi_streamer.vhd2
418@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
w5500_state_machine2
02
12e
aC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/imports/Downloads/spimaster.vhd2
358@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
transceive_unit2h
fC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/imports/Downloads/transceiveunit.vhd2
52
	txrx_unit2
transceive_unit2Q
MC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/top.vhd2
1928@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
transceive_unit2j
fC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/imports/Downloads/transceiveunit.vhd2
308@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
axis_data_fifo_16_times_8bit2�
�c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_16_times_8bit/synth/axis_data_fifo_16_times_8bit.v2
532
u_tx_payload_fifo2
axis_data_fifo_16_times_8bit2j
fC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/imports/Downloads/transceiveunit.vhd2
788@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
axis_data_fifo_16_times_8bit2
 2�
�c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_16_times_8bit/synth/axis_data_fifo_16_times_8bit.v2
538@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
axis_data_fifo_16_times_8bit2
 2
02
12�
�c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_16_times_8bit/synth/axis_data_fifo_16_times_8bit.v2
538@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
axis_data_fifo_16_times_8bit2�
�c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_16_times_8bit/synth/axis_data_fifo_16_times_8bit.v2
532
u_rx_payload_fifo2
axis_data_fifo_16_times_8bit2j
fC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/imports/Downloads/transceiveunit.vhd2
928@Z8-3491h px� 
�
default block is never used226*oasys2j
fC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/imports/Downloads/transceiveunit.vhd2
1328@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
transceive_unit2
02
12j
fC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/imports/Downloads/transceiveunit.vhd2
308@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ext_data_handler2\
ZC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/ext_data_handler.vhd2
332
extdatahandler2
ext_data_handler2Q
MC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/top.vhd2
2118@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ext_data_handler2^
ZC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/ext_data_handler.vhd2
518@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
axis_data_fifo_8bit2u
sc:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/synth/axis_data_fifo_8bit.v2
532
loop_back_buffer_fifo2
axis_data_fifo_8bit2^
ZC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/ext_data_handler.vhd2
1038@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ext_data_handler2
02
12^
ZC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/ext_data_handler.vhd2
518@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
top2
02
12Q
MC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/top.vhd2
488@Z8-256h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2)
'gen_rd_b.gen_doutb_pipe.enb_pipe_reg[0]2D
@C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
30698@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gdvld.data_valid_std_reg2@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
5448@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gen_fwft.empty_fwft_fb_reg2@
<C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
13988@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
&first_tx_passthrough_byte_received_reg2e
aC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/imports/Downloads/spimaster.vhd2
7868@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
rready2
ext_data_handler2^
ZC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/ext_data_handler.vhd2
478@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
rdata_buffer2
ext_data_handler2^
ZC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/ext_data_handler.vhd2
598@Z8-3848h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2:
8axis_infrastructure_v1_1_1_util_aclken_converter_wrapperZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ARESETN2:
8axis_infrastructure_v1_1_1_util_aclken_converter_wrapperZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

S_ACLKEN2:
8axis_infrastructure_v1_1_1_util_aclken_converter_wrapperZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M_ACLKEN2:
8axis_infrastructure_v1_1_1_util_aclken_converter_wrapperZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
rd_clk2
xpm_fifo_rstZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
sleep2
xpm_memory_baseZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
rsta2
xpm_memory_baseZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
regcea2
xpm_memory_baseZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectsbiterra2
xpm_memory_baseZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectdbiterra2
xpm_memory_baseZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
clkb2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[13]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[12]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[11]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[10]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[9]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[8]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[7]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[6]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[5]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[4]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[3]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[2]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[1]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[0]2
xpm_memory_baseZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectsbiterrb2
xpm_memory_baseZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectdbiterrb2
xpm_memory_baseZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_aclk2
xpm_fifo_axisZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axis_aclk2
axis_data_fifo_v2_0_11_topZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
rready2
ext_data_handlerZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2

rdata[7]2
ext_data_handlerZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2

rdata[6]2
ext_data_handlerZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2

rdata[5]2
ext_data_handlerZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2

rdata[4]2
ext_data_handlerZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2

rdata[3]2
ext_data_handlerZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2

rdata[2]2
ext_data_handlerZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2

rdata[1]2
ext_data_handlerZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2

rdata[0]2
ext_data_handlerZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
rlast2
ext_data_handlerZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
rvalid2
ext_data_handlerZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1480.062 ; gain = 574.098
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1480.062 ; gain = 574.098
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1480.062 ; gain = 574.098
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0182

1480.0622
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2t
pc:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2
clk_wiz	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2t
pc:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2
clk_wiz	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2e
aC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/constrs_1/imports/Downloads/PYNQ-Z1_C.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
state_debug_out[0]2e
aC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/constrs_1/imports/Downloads/PYNQ-Z1_C.xdc2
528@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
state_debug_out[1]2e
aC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/constrs_1/imports/Downloads/PYNQ-Z1_C.xdc2
538@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
state_debug_out[2]2e
aC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/constrs_1/imports/Downloads/PYNQ-Z1_C.xdc2
548@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
state_debug_out[3]2e
aC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/constrs_1/imports/Downloads/PYNQ-Z1_C.xdc2
558@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
state_debug_out[4]2e
aC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/constrs_1/imports/Downloads/PYNQ-Z1_C.xdc2
568@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
state_debug_out[5]2e
aC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/constrs_1/imports/Downloads/PYNQ-Z1_C.xdc2
578@Z12-584h px�
�
Finished Parsing XDC File [%s]
178*designutils2e
aC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/constrs_1/imports/Downloads/PYNQ-Z1_C.xdc8Z20-178h px� 
�
�One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2c
aC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/constrs_1/imports/Downloads/PYNQ-Z1_C.xdc2
.Xil/top_propImpl.xdcZ1-498h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2c
aC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/constrs_1/imports/Downloads/PYNQ-Z1_C.xdc2
.Xil/top_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2R
NC:/Users/danie/w5500StateMachine/w5500StateMachine.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2R
NC:/Users/danie/w5500StateMachine/w5500StateMachine.runs/synth_1/dont_touch.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2H
FC:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst_axis.tcl2
.Xil/top_propImpl.xdcZ1-236h px� 
[
2%s XPM XDC files have been applied to the design.
665*project2
10Z1-1714h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1535.3872
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0132

1535.3872
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1535.387 ; gain = 629.422
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7z020clg400-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1535.387 ; gain = 629.422
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1535.387 ; gain = 629.422
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
gen_fwft.curr_fwft_state_reg2
xpm_fifo_baseZ8-802h px� 
{
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
w5500_axi_data_streamerZ8-802h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 invalid |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_            stage1_valid |                               01 |                               10
h p
x
� 
y
%s
*synth2a
_       both_stages_valid |                               10 |                               11
h p
x
� 
y
%s
*synth2a
_            stage2_valid |                               11 |                               01
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
gen_fwft.curr_fwft_state_reg2

sequential2
xpm_fifo_baseZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_         fifo_init_state |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_                    idle |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_       spi_header_byte_0 |                              010 |                              010
h p
x
� 
y
%s
*synth2a
_       spi_header_byte_1 |                              011 |                              011
h p
x
� 
y
%s
*synth2a
_       spi_header_byte_2 |                              100 |                              100
h p
x
� 
y
%s
*synth2a
_          payload_stream |                              101 |                              101
h p
x
� 
y
%s
*synth2a
_              done_state |                              110 |                              110
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2

sequential2
w5500_axi_data_streamerZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
	tdata_reg2Z
VC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/spi_streamer.vhd2
1768@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
payload_fifo_ready_reg2Z
VC:/Users/danie/w5500StateMachine/w5500StateMachine.srcs/sources_1/new/spi_streamer.vhd2
938@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1535.387 ; gain = 629.422
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input   12 Bit       Adders := 10    
h p
x
� 
F
%s
*synth2.
,	   4 Input   11 Bit       Adders := 15    
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit       Adders := 5     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	               24 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	               14 Bit    Registers := 10    
h p
x
� 
H
%s
*synth20
.	               12 Bit    Registers := 10    
h p
x
� 
H
%s
*synth20
.	               11 Bit    Registers := 16    
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 6     
h p
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 14    
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 75    
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
Y
%s
*synth2A
?	              28K Bit	(2048 X 14 bit)          RAMs := 5     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	  37 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	  37 Input   24 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  37 Input   11 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   7 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   7 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  37 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 158   
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 36    
h p
x
� 
F
%s
*synth2.
,	  37 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 43    
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 88    
h p
x
� 
F
%s
*synth2.
,	   7 Input    1 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  37 Input    1 Bit        Muxes := 4     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
rsta2
xpm_memory_baseZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
regcea2
xpm_memory_baseZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectsbiterra2
xpm_memory_baseZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectdbiterra2
xpm_memory_baseZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
clkb2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[13]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[12]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[11]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[10]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[9]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[8]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[7]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[6]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[5]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[4]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[3]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[2]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[1]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[0]2
xpm_memory_baseZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectsbiterrb2
xpm_memory_baseZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectdbiterrb2
xpm_memory_baseZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_aclk2
xpm_fifo_axisZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_aclk2
xpm_fifo_axis__xdcDup__4Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_aclk2
xpm_fifo_axis__xdcDup__3Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_aclk2
xpm_fifo_axis__xdcDup__2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_aclk2
xpm_fifo_axis__xdcDup__1Z8-7129h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 1535.387 ; gain = 629.422
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
R
%s*synth2:
8
Block RAM: Preliminary Mapping Report (see note below)
h px� 
�
%s*synth2�
�+-------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h px� 
�
%s*synth2�
�|Module Name                                      | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
h px� 
�
%s*synth2�
�+-------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h px� 
�
%s*synth2�
�|xpm_fifo_base:/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 2 K x 14(NO_CHANGE)    | W |   | 2 K x 14(NO_CHANGE)    |   | R | Port A and B     | 0      | 1      | 
h px� 
�
%s*synth2�
�|xpm_fifo_base:/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 2 K x 14(NO_CHANGE)    | W |   | 2 K x 14(NO_CHANGE)    |   | R | Port A and B     | 0      | 1      | 
h px� 
�
%s*synth2�
�|xpm_fifo_base:/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 2 K x 14(NO_CHANGE)    | W |   | 2 K x 14(NO_CHANGE)    |   | R | Port A and B     | 0      | 1      | 
h px� 
�
%s*synth2�
�|xpm_fifo_base:/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 2 K x 14(NO_CHANGE)    | W |   | 2 K x 14(NO_CHANGE)    |   | R | Port A and B     | 0      | 1      | 
h px� 
�
%s*synth2�
�|xpm_fifo_base:/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 2 K x 14(NO_CHANGE)    | W |   | 2 K x 14(NO_CHANGE)    |   | R | Port A and B     | 0      | 1      | 
h px� 
�
%s*synth2�
�+-------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 1535.387 ; gain = 629.422
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 1535.387 ; gain = 629.422
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!
Block RAM: Final Mapping Report
h p
x
� 
�
%s
*synth2�
�+-------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h p
x
� 
�
%s
*synth2�
�|Module Name                                      | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
h p
x
� 
�
%s
*synth2�
�+-------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h p
x
� 
�
%s
*synth2�
�|xpm_fifo_base:/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 2 K x 14(NO_CHANGE)    | W |   | 2 K x 14(NO_CHANGE)    |   | R | Port A and B     | 0      | 1      | 
h p
x
� 
�
%s
*synth2�
�|xpm_fifo_base:/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 2 K x 14(NO_CHANGE)    | W |   | 2 K x 14(NO_CHANGE)    |   | R | Port A and B     | 0      | 1      | 
h p
x
� 
�
%s
*synth2�
�|xpm_fifo_base:/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 2 K x 14(NO_CHANGE)    | W |   | 2 K x 14(NO_CHANGE)    |   | R | Port A and B     | 0      | 1      | 
h p
x
� 
�
%s
*synth2�
�|xpm_fifo_base:/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 2 K x 14(NO_CHANGE)    | W |   | 2 K x 14(NO_CHANGE)    |   | R | Port A and B     | 0      | 1      | 
h p
x
� 
�
%s
*synth2�
�|xpm_fifo_base:/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 2 K x 14(NO_CHANGE)    | W |   | 2 K x 14(NO_CHANGE)    |   | R | Port A and B     | 0      | 1      | 
h p
x
� 
�
%s
*synth2�
�+-------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�extdatahandler/loop_back_buffer_fifo/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg2
BlockZ8-7052h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 1535.387 ; gain = 629.422
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2&
$extdatahandler/loop_back_buffer_fifo2
s_axis_tdata[7]Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2&
$extdatahandler/loop_back_buffer_fifo2
s_axis_tdata[6]Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2&
$extdatahandler/loop_back_buffer_fifo2
s_axis_tdata[5]Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2&
$extdatahandler/loop_back_buffer_fifo2
s_axis_tdata[4]Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2&
$extdatahandler/loop_back_buffer_fifo2
s_axis_tdata[3]Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2&
$extdatahandler/loop_back_buffer_fifo2
s_axis_tdata[2]Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2&
$extdatahandler/loop_back_buffer_fifo2
s_axis_tdata[1]Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2&
$extdatahandler/loop_back_buffer_fifo2
s_axis_tdata[0]Z8-3295h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1535.387 ; gain = 629.422
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1535.387 ; gain = 629.422
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1535.387 ; gain = 629.422
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1535.387 ; gain = 629.422
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1535.387 ; gain = 629.422
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1535.387 ; gain = 629.422
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|      |BlackBox name |Instances |
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|1     |clk_wiz_0     |         1|
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
:
%s*synth2"
 +------+---------------+------+
h px� 
:
%s*synth2"
 |      |Cell           |Count |
h px� 
:
%s*synth2"
 +------+---------------+------+
h px� 
:
%s*synth2"
 |1     |clk_wiz_0_bbox |     1|
h px� 
:
%s*synth2"
 |2     |CARRY4         |   123|
h px� 
:
%s*synth2"
 |3     |LUT1           |    10|
h px� 
:
%s*synth2"
 |4     |LUT2           |   203|
h px� 
:
%s*synth2"
 |5     |LUT3           |    89|
h px� 
:
%s*synth2"
 |6     |LUT4           |   205|
h px� 
:
%s*synth2"
 |7     |LUT5           |    92|
h px� 
:
%s*synth2"
 |8     |LUT6           |   279|
h px� 
:
%s*synth2"
 |9     |RAMB36E1       |     5|
h px� 
:
%s*synth2"
 |11    |FDCE           |   105|
h px� 
:
%s*synth2"
 |12    |FDPE           |     1|
h px� 
:
%s*synth2"
 |13    |FDRE           |   503|
h px� 
:
%s*synth2"
 |14    |FDSE           |    92|
h px� 
:
%s*synth2"
 |15    |LD             |     9|
h px� 
:
%s*synth2"
 |16    |IBUF           |     2|
h px� 
:
%s*synth2"
 |17    |OBUF           |     2|
h px� 
:
%s*synth2"
 |18    |OBUFT          |     1|
h px� 
:
%s*synth2"
 +------+---------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1535.387 ; gain = 629.422
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 37 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:21 . Memory (MB): peak = 1535.387 ; gain = 574.098
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1535.387 ; gain = 629.422
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0142

1535.3872
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
137Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1535.3872
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2G
E  A total of 9 instances were transformed.
  LD => LDCE: 9 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

309afd7fZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1062
962
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:242

00:00:322

1535.3872

1051.012Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0042

1535.3872
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2I
GC:/Users/danie/w5500StateMachine/w5500StateMachine.runs/synth_1/top.dcpZ17-1381h px� 
z
%s4*runtcl2^
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Mar 26 15:17:21 2025Z17-206h px� 


End Record