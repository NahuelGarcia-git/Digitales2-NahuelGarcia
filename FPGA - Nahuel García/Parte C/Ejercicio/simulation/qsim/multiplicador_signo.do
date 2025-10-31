onerror {quit -f}
vlib work
vlog -work work multiplicador_signo.vo
vlog -work work multiplicador_signo.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.esquematico_vlg_vec_tst
vcd file -direction multiplicador_signo.msim.vcd
vcd add -internal esquematico_vlg_vec_tst/*
vcd add -internal esquematico_vlg_vec_tst/i1/*
add wave /*
run -all
