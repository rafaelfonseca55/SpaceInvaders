transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/fonseca/Desktop/SpaceInvaders/FFD.vhd}
vcom -93 -work work {C:/Users/fonseca/Desktop/SpaceInvaders/FA.vhd}
vcom -93 -work work {C:/Users/fonseca/Desktop/SpaceInvaders/Somador.vhd}
vcom -93 -work work {C:/Users/fonseca/Desktop/SpaceInvaders/Decoder.vhd}
vcom -93 -work work {C:/Users/fonseca/Desktop/SpaceInvaders/REG.vhd}
vcom -93 -work work {C:/Users/fonseca/Desktop/SpaceInvaders/Key_Decode.vhd}
vcom -93 -work work {C:/Users/fonseca/Desktop/SpaceInvaders/Key_Scan.vhd}
vcom -93 -work work {C:/Users/fonseca/Desktop/SpaceInvaders/Key_Control.vhd}
vcom -93 -work work {C:/Users/fonseca/Desktop/SpaceInvaders/MUX.vhd}
vcom -93 -work work {C:/Users/fonseca/Desktop/SpaceInvaders/Counter_KeyScan.vhd}
vcom -93 -work work {C:/Users/fonseca/Desktop/SpaceInvaders/CLKDIV.vhd}
vcom -93 -work work {C:/Users/fonseca/Desktop/SpaceInvaders/Keyboard_Reader.vhd}

vcom -93 -work work {C:/Users/fonseca/Desktop/SpaceInvaders/Key_Decode_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Key_Decode_tb

add wave *
view structure
view signals
run -all
