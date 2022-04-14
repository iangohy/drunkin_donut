set projDir "/home/ian/Documents/drunkin_donut/work/vivado"
set projName "drunkin_donut"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/home/ian/Documents/drunkin_donut/work/verilog/au_top_0_debug_0.v" "/home/ian/Documents/drunkin_donut/work/verilog/reset_conditioner_1.v" "/home/ian/Documents/drunkin_donut/work/verilog/button_conditioner_2.v" "/home/ian/Documents/drunkin_donut/work/verilog/edge_detector_3.v" "/home/ian/Documents/drunkin_donut/work/verilog/beta_1_debug_4.v" "/home/ian/Documents/drunkin_donut/work/verilog/custom_seven_seg_5.v" "/home/ian/Documents/drunkin_donut/work/verilog/au_debugger_6.v" "/home/ian/Documents/drunkin_donut/work/verilog/pipeline_7.v" "/home/ian/Documents/drunkin_donut/work/verilog/alu_2_debug_8.v" "/home/ian/Documents/drunkin_donut/work/verilog/game_CU_3_debug_9.v" "/home/ian/Documents/drunkin_donut/work/verilog/regfile_10.v" "/home/ian/Documents/drunkin_donut/work/verilog/counter_11.v" "/home/ian/Documents/drunkin_donut/work/verilog/circle_clock_4_debug_12.v" "/home/ian/Documents/drunkin_donut/work/verilog/multi_seven_seg_13.v" "/home/ian/Documents/drunkin_donut/work/verilog/async_fifo_14.v" "/home/ian/Documents/drunkin_donut/work/verilog/simple_dual_ram_15.v" "/home/ian/Documents/drunkin_donut/work/verilog/add_sub_16.v" "/home/ian/Documents/drunkin_donut/work/verilog/compare_17.v" "/home/ian/Documents/drunkin_donut/work/verilog/boolean_18.v" "/home/ian/Documents/drunkin_donut/work/verilog/shifter_19.v" "/home/ian/Documents/drunkin_donut/work/verilog/multiplier_20.v" "/home/ian/Documents/drunkin_donut/work/verilog/mux_2_21.v" "/home/ian/Documents/drunkin_donut/work/verilog/mux_4_22.v" "/home/ian/Documents/drunkin_donut/work/verilog/counter_23.v" "/home/ian/Documents/drunkin_donut/work/verilog/counter_24.v" "/home/ian/Documents/drunkin_donut/work/verilog/seven_seg_25.v" "/home/ian/Documents/drunkin_donut/work/verilog/not_decoder_26.v" "/home/ian/Documents/drunkin_donut/work/verilog/simple_dual_ram_27.v" "/home/ian/Documents/drunkin_donut/work/verilog/full_adder_28.v" "/home/ian/Documents/drunkin_donut/work/verilog/sixteen_bit_shiftleft_29.v" "/home/ian/Documents/drunkin_donut/work/verilog/sixteen_bit_shiftright_30.v" "/home/ian/Documents/drunkin_donut/work/verilog/sixteen_bit_sra_31.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "/home/ian/Documents/drunkin_donut/constraint/newau.xdc" "/home/ian/Documents/drunkin_donut/work/constraint/custom.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 16
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 16
wait_on_run impl_1
