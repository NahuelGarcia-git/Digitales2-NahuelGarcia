onerror {quit -f}
vlib work
vlog -work work State_machine.vo
vlog -work work State_machine.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.State_machine_vlg_vec_tst
vcd file -direction State_machine.msim.vcd
vcd add -internal State_machine_vlg_vec_tst/*
vcd add -internal State_machine_vlg_vec_tst/i1/*
add wave /*
run -all
