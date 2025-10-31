transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {Multiplicador2x2_7_1200mv_85c_slow.vo}

vcom -93 -work work {C:/Users/nicol/Desktop/FPGA - Nahuel García/Parte B/Ejercicio/multiplicador_testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneiii_ver -L gate_work -L work -voptargs="+acc"  multiplicador_testbench

add wave *
view structure
view signals
run -all
