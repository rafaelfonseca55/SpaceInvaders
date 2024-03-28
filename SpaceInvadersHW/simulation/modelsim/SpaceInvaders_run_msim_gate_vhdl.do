transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {SpaceInvaders.vho}

vcom -93 -work work {C:/Users/slb4e/Desktop/SpaceInvaders/SpaceInvadersHW/Key_Decode_tb.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L fiftyfivenm -L gate_work -L work -voptargs="+acc"  Key_Decode_tb

add wave *
view structure
view signals
run -all
