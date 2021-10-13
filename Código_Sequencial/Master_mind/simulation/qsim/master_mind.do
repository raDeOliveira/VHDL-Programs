onerror {exit -code 1}
vlib work
vlog -work work master_mind.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.master_mind_vlg_vec_tst -voptargs="+acc"
vcd file -direction master_mind.msim.vcd
vcd add -internal master_mind_vlg_vec_tst/*
vcd add -internal master_mind_vlg_vec_tst/i1/*
run -all
quit -f
