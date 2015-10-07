onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fifo_rc/rclk
add wave -noupdate /fifo_rc/reset
add wave -noupdate /fifo_rc/read_enable
add wave -noupdate /fifo_rc/wptr_s
add wave -noupdate /fifo_rc/empty
add wave -noupdate /fifo_rc/raddr
add wave -noupdate /fifo_rc/ren
add wave -noupdate /fifo_rc/rptr
add wave -noupdate /fifo_rc/read_enable
add wave -noupdate /fifo_rc/raddr
add wave -noupdate /fifo_rc/ren
add wave -noupdate -expand /fifo_rc/rptr
add wave -noupdate /fifo_rc/wptr_s
add wave -noupdate /fifo_rc/rptr_int
add wave -noupdate /fifo_rc/empty_int
add wave -noupdate /fifo_rc/fifo_occu_out_int
add wave -noupdate -radix unsigned /fifo_rc/fifo_occu_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {45000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 255
configure wave -valuecolwidth 211
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
wave create -pattern none -portmode in -language vhdl /fifo_rc/rclk 
wave create -pattern none -portmode in -language vhdl /fifo_rc/reset 
wave create -pattern none -portmode in -language vhdl /fifo_rc/read_enable 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fifo_rc/fifo_occu_out 
wave create -pattern none -portmode out -language vhdl /fifo_rc/empty 
wave create -pattern none -portmode out -language vhdl -range 3 0 /fifo_rc/raddr 
wave create -pattern none -portmode out -language vhdl /fifo_rc/ren 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fifo_rc/rptr 
wave create -pattern none -portmode in -language vhdl -range 4 0 /fifo_rc/wptr_s 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 10ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/fifo_rc/rclk 
wave modify -driver freeze -pattern counter -startvalue 1 -endvalue 0 -type Range -direction Down -period 30ns -step 1 -repeat never -starttime 0ns -endtime 1000ns Edit:/fifo_rc/reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/fifo_rc/read_enable 
wave modify -driver freeze -pattern constant -value 10000 -range 4 0 -starttime 0ns -endtime 1000ns Edit:/fifo_rc/wptr_s 
wave modify -driver freeze -pattern constant -value 01111 -range 4 0 -starttime 0ns -endtime 1000ns Edit:/fifo_rc/wptr_s 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/fifo_rc/reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 40ns Edit:/fifo_rc/reset 
WaveCollapseAll -1
wave clipboard restore
