onerror {quit -f}
vlib work
vlog -work work code_converter.vo
vlog -work work code_converter.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.code_converter_vlg_vec_tst
vcd file -direction code_converter.msim.vcd
vcd add -internal code_converter_vlg_vec_tst/*
vcd add -internal code_converter_vlg_vec_tst/i1/*
add wave /*
run -all
