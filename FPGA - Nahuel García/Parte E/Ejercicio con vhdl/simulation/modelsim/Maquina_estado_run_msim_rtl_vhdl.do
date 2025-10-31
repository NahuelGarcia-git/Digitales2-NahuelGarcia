transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/nicol/Desktop/FPGA - Nahuel García/Parte E/Ejercicio/Maquina_estado.vhd}

