onerror {quit -f}
vlib work
vlog -work work reference_setter.vo
vlog -work work reference_setter.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.reference_setter_vlg_vec_tst
vcd file -direction reference_setter.msim.vcd
vcd add -internal reference_setter_vlg_vec_tst/*
vcd add -internal reference_setter_vlg_vec_tst/i1/*
add wave /*
run -all
