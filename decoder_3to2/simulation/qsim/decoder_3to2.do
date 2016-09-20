onerror {quit -f}
vlib work
vlog -work work decoder_3to2.vo
vlog -work work decoder_3to2.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.decoder_3to2_vlg_vec_tst
vcd file -direction decoder_3to2.msim.vcd
vcd add -internal decoder_3to2_vlg_vec_tst/*
vcd add -internal decoder_3to2_vlg_vec_tst/i1/*
add wave /*
run -all
