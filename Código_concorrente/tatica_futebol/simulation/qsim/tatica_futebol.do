onerror {exit -code 1}
vlib work
vlog -work work tatica_futebol.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.tatica_futebol_vlg_vec_tst -voptargs="+acc"
vcd file -direction tatica_futebol.msim.vcd
vcd add -internal tatica_futebol_vlg_vec_tst/*
vcd add -internal tatica_futebol_vlg_vec_tst/i1/*
run -all
quit -f
