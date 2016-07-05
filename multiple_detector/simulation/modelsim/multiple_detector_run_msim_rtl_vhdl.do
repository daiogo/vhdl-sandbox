transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Dropbox/2-2015/Lógica Reconfigurável/prova2/multiple_detector/multiple_detector.vhd}

