onerror {exit -code 1}
vlib work
vlog -work work covid_v3.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.covid_v3_vlg_vec_tst -voptargs="+acc"
vcd file -direction covid_v3.msim.vcd
vcd add -internal covid_v3_vlg_vec_tst/*
vcd add -internal covid_v3_vlg_vec_tst/i1/*
run -all
quit -f
