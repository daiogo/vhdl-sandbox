onerror {quit -f}
vlib work
vlog -work work hamming_weight_calculator.vo
vlog -work work hamming_weight_calculator.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.hamming_weight_calculator_vlg_vec_tst
vcd file -direction hamming_weight_calculator.msim.vcd
vcd add -internal hamming_weight_calculator_vlg_vec_tst/*
vcd add -internal hamming_weight_calculator_vlg_vec_tst/i1/*
add wave /*
run -all
