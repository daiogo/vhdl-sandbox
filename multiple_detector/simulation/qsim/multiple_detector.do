onerror {quit -f}
vlib work
vlog -work work multiple_detector.vo
vlog -work work multiple_detector.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.multiple_detector_vlg_vec_tst
vcd file -direction multiple_detector.msim.vcd
vcd add -internal multiple_detector_vlg_vec_tst/*
vcd add -internal multiple_detector_vlg_vec_tst/i1/*
add wave /*
run -all
