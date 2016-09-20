onerror {quit -f}
vlib work
vlog -work work random_onehot_generator.vo
vlog -work work random_onehot_generator.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.random_onehot_generator_vlg_vec_tst
vcd file -direction random_onehot_generator.msim.vcd
vcd add -internal random_onehot_generator_vlg_vec_tst/*
vcd add -internal random_onehot_generator_vlg_vec_tst/i1/*
add wave /*
run -all
