onerror {quit -f}
vlib work
vlog -work work tflipflop.vo
vlog -work work tflipflop.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.tflipflop_vlg_vec_tst
vcd file -direction tflipflop.msim.vcd
vcd add -internal tflipflop_vlg_vec_tst/*
vcd add -internal tflipflop_vlg_vec_tst/i1/*
add wave /*
run -all
