onerror {quit -f}
vlib work
vlog -work work Sumador_Completo.vo
vlog -work work Sumador_Completo.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Sumador_Completo_vlg_vec_tst
vcd file -direction Sumador_Completo.msim.vcd
vcd add -internal Sumador_Completo_vlg_vec_tst/*
vcd add -internal Sumador_Completo_vlg_vec_tst/i1/*
add wave /*
run -all
