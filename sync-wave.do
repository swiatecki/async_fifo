onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sync/reset
add wave -noupdate /sync/inclk
add wave -noupdate /sync/outclk
add wave -noupdate /sync/ptr
add wave -noupdate /sync/ptr_sync
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1050 ns}
view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /sync/reset 
wave create -pattern none -portmode in -language vhdl /sync/inclk 
wave create -pattern none -portmode in -language vhdl /sync/outclk 
wave create -pattern none -portmode in -language vhdl -range 4 0 /sync/ptr 
wave create -pattern none -portmode out -language vhdl -range 4 0 /sync/ptr_sync 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/sync/inclk 
{wave export -file sync-tb -starttime 0 -endtime 1000 -format vhdl -designunit sync} 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 10ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/sync/inclk 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/sync/outclk 
{wave export -file sync-tb -starttime 0 -endtime 1000 -format vhdl -designunit sync} 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 30ns NewSig:/sync/reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 30ns -endtime 1000ns NewSig:/sync/reset 
{wave export -file sync-tb -starttime 0 -endtime 1000 -format force -designunit sync} 
WaveCollapseAll -1
wave clipboard restore
