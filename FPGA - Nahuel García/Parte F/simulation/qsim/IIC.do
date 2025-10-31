onerror {quit -f}
vlib work
vlog -work work IIC.vo
vlog -work work IIC.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Bloque_1_vlg_vec_tst
vcd file -direction IIC.msim.vcd
vcd add -internal Bloque_1_vlg_vec_tst/*
vcd add -internal Bloque_1_vlg_vec_tst/i1/*
add wave /*
run -all
