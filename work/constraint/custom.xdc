# clk => 100000000Hz
create_clock -period 10.0 -name clk_0 -waveform {0.000 5.000} [get_ports clk]
set_property PACKAGE_PIN N14 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
set_property PACKAGE_PIN P6 [get_ports {rst_n}]
set_property IOSTANDARD LVCMOS33 [get_ports {rst_n}]
set_property PACKAGE_PIN M2 [get_ports {p1_sev[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p1_sev[0]}]
set_property PACKAGE_PIN N13 [get_ports {p1_sev[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p1_sev[1]}]
set_property PACKAGE_PIN N11 [get_ports {p1_sev[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p1_sev[2]}]
set_property PACKAGE_PIN P10 [get_ports {p1_sev[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p1_sev[3]}]
set_property PACKAGE_PIN M1 [get_ports {p1_sev[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p1_sev[4]}]
set_property PACKAGE_PIN P13 [get_ports {p1_sev[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p1_sev[5]}]
set_property PACKAGE_PIN N12 [get_ports {p1_sev[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p1_sev[6]}]
set_property PACKAGE_PIN P11 [get_ports {p1_sev[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p1_sev[7]}]
set_property PACKAGE_PIN N2 [get_ports {p1_sel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p1_sel[0]}]
set_property PACKAGE_PIN R11 [get_ports {p1_sel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p1_sel[1]}]
set_property PACKAGE_PIN T12 [get_ports {p1_sel[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p1_sel[2]}]
set_property PACKAGE_PIN T13 [get_ports {p1_sel[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p1_sel[3]}]
set_property PACKAGE_PIN P5 [get_ports {reset_button}]
set_property IOSTANDARD LVCMOS33 [get_ports {reset_button}]
set_property PULLDOWN true [get_ports {reset_button}]
set_property PACKAGE_PIN M5 [get_ports {p1_button}]
set_property IOSTANDARD LVCMOS33 [get_ports {p1_button}]
set_property PULLDOWN true [get_ports {p1_button}]
set_property PACKAGE_PIN L4 [get_ports {p2_button}]
set_property IOSTANDARD LVCMOS33 [get_ports {p2_button}]
set_property PULLDOWN true [get_ports {p2_button}]
set_property PACKAGE_PIN C7 [get_ports {circle_led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[0]}]
set_property PACKAGE_PIN D6 [get_ports {circle_led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[1]}]
set_property PACKAGE_PIN F5 [get_ports {circle_led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[2]}]
set_property PACKAGE_PIN G5 [get_ports {circle_led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[3]}]
set_property PACKAGE_PIN D4 [get_ports {circle_led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[4]}]
set_property PACKAGE_PIN E3 [get_ports {circle_led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[5]}]
set_property PACKAGE_PIN C3 [get_ports {circle_led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[6]}]
set_property PACKAGE_PIN C1 [get_ports {circle_led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[7]}]
set_property PACKAGE_PIN C6 [get_ports {circle_led[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[8]}]
set_property PACKAGE_PIN D5 [get_ports {circle_led[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[9]}]
set_property PACKAGE_PIN E5 [get_ports {circle_led[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[10]}]
set_property PACKAGE_PIN G4 [get_ports {circle_led[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[11]}]
set_property PACKAGE_PIN C4 [get_ports {circle_led[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[12]}]
set_property PACKAGE_PIN D3 [get_ports {circle_led[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[13]}]
set_property PACKAGE_PIN C2 [get_ports {circle_led[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[14]}]
set_property PACKAGE_PIN M6 [get_ports {circle_led[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[15]}]
set_property PACKAGE_PIN H5 [get_ports {circle_led[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[16]}]
set_property PACKAGE_PIN J3 [get_ports {circle_led[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[17]}]
set_property PACKAGE_PIN J5 [get_ports {circle_led[18]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[18]}]
set_property PACKAGE_PIN K3 [get_ports {circle_led[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[19]}]
set_property PACKAGE_PIN N9 [get_ports {circle_led[20]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[20]}]
set_property PACKAGE_PIN R7 [get_ports {circle_led[21]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[21]}]
set_property PACKAGE_PIN T9 [get_ports {circle_led[22]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[22]}]
set_property PACKAGE_PIN N6 [get_ports {circle_led[23]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[23]}]
set_property PACKAGE_PIN H4 [get_ports {circle_led[24]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[24]}]
set_property PACKAGE_PIN H3 [get_ports {circle_led[25]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[25]}]
set_property PACKAGE_PIN J4 [get_ports {circle_led[26]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[26]}]
set_property PACKAGE_PIN K2 [get_ports {circle_led[27]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[27]}]
set_property PACKAGE_PIN P9 [get_ports {circle_led[28]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[28]}]
set_property PACKAGE_PIN R6 [get_ports {circle_led[29]}]
set_property IOSTANDARD LVCMOS33 [get_ports {circle_led[29]}]
set_property PACKAGE_PIN P15 [get_ports {usb_rx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_rx}]
set_property PACKAGE_PIN P16 [get_ports {usb_tx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_tx}]
