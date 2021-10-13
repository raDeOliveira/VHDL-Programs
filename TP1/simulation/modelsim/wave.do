onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mux/enable
add wave -noupdate /mux/enable1
add wave -noupdate -expand /mux/a_IN
add wave -noupdate /mux/sel
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {318 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {449993130 ps} {450004994 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 100us -dutycycle 50 -starttime 0us -endtime 1000us sim:/mux/enable 
wave create -driver freeze -pattern constant -value U -starttime 0us -endtime 1000us sim:/mux/enable1 
WaveCollapseAll -1
wave clipboard restore
