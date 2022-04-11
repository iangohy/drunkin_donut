set projDir "/home/ian/Documents/drunkin_donut/work/vivado"
set projName "drunkin_donut"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/home/ian/Documents/drunkin_donut/work/verilog/au_top_0_debug_0.v" "/home/ian/Documents/drunkin_donut/work/verilog/reset_conditioner_1.v" "/home/ian/Documents/drunkin_donut/work/verilog/button_conditioner_2.v" "/home/ian/Documents/drunkin_donut/work/verilog/edge_detector_3.v" "/home/ian/Documents/drunkin_donut/work/verilog/beta_1_debug_4.v" "/home/ian/Documents/drunkin_donut/work/verilog/au_debugger_5.v" "/home/ian/Documents/drunkin_donut/work/verilog/pipeline_6.v" "/home/ian/Documents/drunkin_donut/work/verilog/alu_7.v" "/home/ian/Documents/drunkin_donut/work/verilog/game_CU_2_debug_8.v" "/home/ian/Documents/drunkin_donut/work/verilog/regfile_9.v" "/home/ian/Documents/drunkin_donut/work/verilog/counter_10.v" "/home/ian/Documents/drunkin_donut/work/verilog/circle_clock_11.v" "/home/ian/Documents/drunkin_donut/work/verilog/async_fifo_12.v" "/home/ian/Documents/drunkin_donut/work/verilog/simple_dual_ram_13.v" "/home/ian/Documents/drunkin_donut/work/verilog/add_sub_14.v" "/home/ian/Documents/drunkin_donut/work/verilog/compare_15.v" "/home/ian/Documents/drunkin_donut/work/verilog/boolean_16.v" "/home/ian/Documents/drunkin_donut/work/verilog/shifter_17.v" "/home/ian/Documents/drunkin_donut/work/verilog/multiplier_18.v" "/home/ian/Documents/drunkin_donut/work/verilog/mux_2_19.v" "/home/ian/Documents/drunkin_donut/work/verilog/mux_4_20.v" "/home/ian/Documents/drunkin_donut/work/verilog/counter_21.v" "/home/ian/Documents/drunkin_donut/work/verilog/simple_dual_ram_22.v" "/home/ian/Documents/drunkin_donut/work/verilog/full_adder_23.v" "/home/ian/Documents/drunkin_donut/work/verilog/sixteen_bit_shiftleft_24.v" "/home/ian/Documents/drunkin_donut/work/verilog/sixteen_bit_shiftright_25.v" "/home/ian/Documents/drunkin_donut/work/verilog/sixteen_bit_sra_26.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "/home/ian/Documents/drunkin_donut/constraint/alchitry.xdc" "/home/ian/Documents/drunkin_donut/constraint/io.xdc" "/home/ian/Documents/drunkin_donut/work/constraint/alchitry.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 16
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 16
wait_on_run impl_1
