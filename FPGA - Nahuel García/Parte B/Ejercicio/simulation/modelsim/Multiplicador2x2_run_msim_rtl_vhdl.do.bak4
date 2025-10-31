transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/nicol/Desktop/FPGA - Nahuel García/Parte B/Ejercicio/Sumador_Completo.vhd}
vcom -93 -work work {C:/Users/nicol/Desktop/FPGA - Nahuel García/Parte B/Ejercicio/Multiplicador2x2.vhd}

vcom -93 -work work {C:/Users/nicol/Desktop/FPGA - Nahuel García/Parte B/Ejercicio/multiplicador_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  multiplicador_testbench

add wave *
view structure
view signals
run -all
