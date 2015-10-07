onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /async_fifo/reset
add wave -noupdate /async_fifo/wclk
add wave -noupdate /async_fifo/rclk
add wave -noupdate /async_fifo/write_enable
add wave -noupdate /async_fifo/read_enable
add wave -noupdate -radix unsigned /async_fifo/fifo_occu_in
add wave -noupdate -radix unsigned /async_fifo/fifo_occu_out
add wave -noupdate /async_fifo/write_data_in
add wave -noupdate /async_fifo/read_data_out
add wave -noupdate /async_fifo/full
add wave -noupdate /async_fifo/empty
add wave -noupdate /async_fifo/waddr
add wave -noupdate /async_fifo/raddr
add wave -noupdate /async_fifo/wptr
add wave -noupdate /async_fifo/rptr
add wave -noupdate /async_fifo/wptr_s
add wave -noupdate /async_fifo/rptr_s
add wave -noupdate -color Cyan /async_fifo/wen
add wave -noupdate /async_fifo/ren
add wave -noupdate /async_fifo/reset
add wave -noupdate /async_fifo/wclk
add wave -noupdate /async_fifo/rclk
add wave -noupdate /async_fifo/write_enable
add wave -noupdate /async_fifo/read_enable
add wave -noupdate /async_fifo/fifo_occu_in
add wave -noupdate /async_fifo/fifo_occu_out
add wave -noupdate /async_fifo/write_data_in
add wave -noupdate /async_fifo/read_data_out
add wave -noupdate /async_fifo/full
add wave -noupdate /async_fifo/empty
add wave -noupdate /async_fifo/wc/fifo_occu_in
add wave -noupdate /async_fifo/wc/full
add wave -noupdate /async_fifo/wc/waddr
add wave -noupdate -expand /async_fifo/wc/wptr
add wave -noupdate /async_fifo/wc/rptr_s
add wave -noupdate -expand /async_fifo/wc/wptr_int
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {49183 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 268
configure wave -valuecolwidth 243
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
WaveRestoreZoom {0 ps} {1312500 ps}
view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /async_fifo/reset 
wave create -pattern none -portmode in -language vhdl /async_fifo/wclk 
wave create -pattern none -portmode in -language vhdl /async_fifo/rclk 
wave create -pattern none -portmode in -language vhdl /async_fifo/write_enable 
wave create -pattern none -portmode in -language vhdl /async_fifo/read_enable 
wave create -pattern none -portmode out -language vhdl -range 4 0 /async_fifo/fifo_occu_in 
wave create -pattern none -portmode out -language vhdl -range 4 0 /async_fifo/fifo_occu_out 
wave create -pattern none -portmode in -language vhdl -range 7 0 /async_fifo/write_data_in 
wave create -pattern none -portmode out -language vhdl -range 7 0 /async_fifo/read_data_out 
wave create -pattern none -portmode out -language vhdl /async_fifo/full 
wave create -pattern none -portmode out -language vhdl /async_fifo/empty 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/async_fifo/wclk 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 15ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/async_fifo/rclk 
wave modify -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 250ns -step 1 -repeat forever -range 7 0 -starttime 0ns -endtime 1000ns Edit:/async_fifo/write_data_in 
wave modify -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 100ns -step 1 -repeat forever -range 7 0 -starttime 0ns -endtime 1000ns Edit:/async_fifo/write_data_in 
wave modify -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 80ns -step 1 -repeat forever -range 7 0 -starttime 0ns -endtime 1000ns Edit:/async_fifo/write_data_in 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ns -endtime 10000ns Edit:/async_fifo/wclk 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 15ns -dutycycle 50 -starttime 0ns -endtime 10000ns Edit:/async_fifo/rclk 
wave modify -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 80ns -step 1 -repeat forever -range 7 0 -starttime 0ns -endtime 10000ns Edit:/async_fifo/write_data_in 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns Edit:/async_fifo/write_enable 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 50ns Edit:/async_fifo/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 50ns -endtime 10000ns Edit:/async_fifo/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns Edit:/async_fifo/read_enable 
WaveCollapseAll -1
wave clipboard restore