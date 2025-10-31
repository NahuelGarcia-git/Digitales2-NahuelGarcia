onerror {quit -f}
vlib work
vlog -work work Maquina_estado.vo
vlog -work work Maquina_estado.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Maquina_estado_vlg_vec_tst
vcd file -direction Maquina_estado.msim.vcd
vcd add -internal Maquina_estado_vlg_vec_tst/*
vcd add -internal Maquina_estado_vlg_vec_tst/i1/*
add wave /*
run -all
