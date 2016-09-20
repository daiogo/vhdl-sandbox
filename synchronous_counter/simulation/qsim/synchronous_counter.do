onerror {quit -f}
vlib work
vlog -work work synchronous_counter.vo
vlog -work work synchronous_counter.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.synchronous_counter_vlg_vec_tst
vcd file -direction synchronous_counter.msim.vcd
vcd add -internal synchronous_counter_vlg_vec_tst/*
vcd add -internal synchronous_counter_vlg_vec_tst/i1/*
add wave /*
run -all
