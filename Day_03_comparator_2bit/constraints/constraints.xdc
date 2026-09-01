set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports {A[0]}];
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports {B[0]}];
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports {A[1]}];
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports {B[1]}];
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports {A_gt_B}];
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {A_eq_B}];
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports {A_lt_B}];