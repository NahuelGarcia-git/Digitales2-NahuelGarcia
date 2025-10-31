onerror {quit -f}
vlib work
vlog -work work Multiplicador2x2.vo
vlog -work work Multiplicador2x2.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Multiplicador2x2_vlg_vec_tst
vcd file -direction Multiplicador2x2.msim.vcd
vcd add -internal Multiplicador2x2_vlg_vec_tst/*
vcd add -internal Multiplicador2x2_vlg_vec_tst/i1/*
add wave /*
run -all
