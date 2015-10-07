onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fifo_wc/wclk
add wave -noupdate /fifo_wc/reset
add wave -noupdate /fifo_wc/write_enable
add wave -noupdate -color Red /fifo_wc/full
add wave -noupdate -radix unsigned /fifo_wc/waddr
add wave -noupdate /fifo_wc/wen
add wave -noupdate -radix binary /fifo_wc/wptr
add wave -noupdate /fifo_wc/rptr_s
add wave -noupdate -radix unsigned /fifo_wc/fifo_occu_in
add wave -noupdate /fifo_wc/wclk
add wave -noupdate /fifo_wc/reset
add wave -noupdate /fifo_wc/write_enable
add wave -noupdate /fifo_wc/fifo_occu_in
add wave -noupdate /fifo_wc/full
add wave -noupdate /fifo_wc/waddr
add wave -noupdate /fifo_wc/wen
add wave -noupdate /fifo_wc/rptr_s
add wave -noupdate -radix unsigned /fifo_wc/wptr_int
add wave -noupdate /fifo_wc/full_int
add wave -noupdate -radix unsigned /fifo_wc/fifo_occu_in_int
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {316656 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 207
configure wave -valuecolwidth 137
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
WaveRestoreZoom {0 ps} {525 ns}
view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /fifo_wc/wclk 
wave create -pattern none -portmode in -language vhdl /fifo_wc/reset 
wave create -pattern none -portmode in -language vhdl /fifo_wc/write_enable 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fifo_wc/fifo_occu_in 
wave create -pattern none -portmode out -language vhdl /fifo_wc/full 
wave create -pattern none -portmode out -language vhdl -range 3 0 /fifo_wc/waddr 
wave create -pattern none -portmode out -language vhdl /fifo_wc/wen 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fifo_wc/wptr 
wave create -pattern none -portmode in -language vhdl -range 4 0 /fifo_wc/rptr_s 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 10ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/fifo_wc/wclk 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 30ns Edit:/fifo_wc/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 30ns -endtime 1000ns Edit:/fifo_wc/reset 
wave modify -driver freeze -pattern constant -value 00000 -range 4 0 -starttime 0ns -endtime 1000ns Edit:/fifo_wc/rptr_s 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/fifo_wc/write_enable 
wave modify -driver freeze -pattern constant -value 00001 -range 4 0 -starttime 250ns -endtime 300ns Edit:/fifo_wc/rptr_s 
wave modify -driver freeze -pattern constant -value 00010 -range 4 0 -starttime 300ns -endtime 350ns Edit:/fifo_wc/rptr_s 
wave modify -driver freeze -pattern constant -value 10000 -range 4 0 -starttime 350ns -endtime 400ns Edit:/fifo_wc/rptr_s 
wave modify -driver freeze -pattern constant -value 10000 -range 4 0 -starttime 350ns -endtime 700ns Edit:/fifo_wc/rptr_s 
WaveCollapseAll -1
wave clipboard restore
