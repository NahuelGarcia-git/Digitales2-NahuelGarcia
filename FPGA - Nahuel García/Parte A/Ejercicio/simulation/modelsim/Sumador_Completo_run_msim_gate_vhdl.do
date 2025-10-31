transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Sumador_Completo_7_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/nicol/Desktop/FPGA - Nahuel García/Parte A/Ejercicio/sumador_testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=Sumador_Completo_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  Sumador_completo

add wave *
view structure
view signals
run -all
