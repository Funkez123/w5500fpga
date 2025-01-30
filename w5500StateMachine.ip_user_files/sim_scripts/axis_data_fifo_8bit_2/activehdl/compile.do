transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/axis_infrastructure_v1_1_1
vlib activehdl/axis_data_fifo_v2_0_11
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap axis_infrastructure_v1_1_1 activehdl/axis_infrastructure_v1_1_1
vmap axis_data_fifo_v2_0_11 activehdl/axis_data_fifo_v2_0_11
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+../../../../w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l xil_defaultlib \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_1  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+../../../../w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l xil_defaultlib \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_11  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+../../../../w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l xil_defaultlib \
"../../../ipstatic/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+../../../../w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_11 -l xil_defaultlib \
"../../../../w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit/sim/axis_data_fifo_8bit.v" \

vlog -work xil_defaultlib \
"glbl.v"

