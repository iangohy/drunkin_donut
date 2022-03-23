set projDir "/home/ian/Documents/50002-1D-ALU/work/vivado"
set projName "50002-1D-ALU"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/home/ian/Documents/50002-1D-ALU/work/verilog/au_top_0.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/automanual_1.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/reset_conditioner_2.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/alu_control_3.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/tester_4.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/mux_2_5.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/edge_detector_6.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/alu_7.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/counter_8.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/pausing_counter_9.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/edge_detector_10.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/tester_rom_11.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/add_sub_12.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/compare_13.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/boolean_14.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/shifter_15.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/multiplier_16.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/mux_4_17.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/rca_five_18.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/full_adder_19.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/sixteen_bit_shiftleft_20.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/sixteen_bit_shiftright_21.v" "/home/ian/Documents/50002-1D-ALU/work/verilog/sixteen_bit_sra_22.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "/home/ian/Documents/50002-1D-ALU/work/constraint/alchitry.xdc" "/home/ian/Documents/50002-1D-ALU/work/constraint/io.xdc" "/tools/alchitry/library/components/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 16
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 16
wait_on_run impl_1
