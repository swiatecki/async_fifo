onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /async_fifo_tb/read_data_out
add wave -noupdate /async_fifo_tb/fifo_occu_out
add wave -noupdate /async_fifo_tb/DUT/wptr_s
add wave -noupdate /async_fifo_tb/empty
add wave -noupdate /async_fifo_tb/DUT/empty
add wave -noupdate /async_fifo_tb/DUT/fifo_occu_out
add wave -noupdate /async_fifo_tb/rclk
add wave -noupdate /async_fifo_tb/write_enable
add wave -noupdate /async_fifo_tb/wclk
add wave -noupdate /async_fifo_tb/write_data_in
add wave -noupdate /async_fifo_tb/read_enable
add wave -noupdate /async_fifo_tb/full
add wave -noupdate /async_fifo_tb/fifo_occu_in
add wave -noupdate /async_fifo_tb/reset
add wave -noupdate /async_fifo_tb/DUT/reset
add wave -noupdate /async_fifo_tb/DUT/wclk
add wave -noupdate /async_fifo_tb/DUT/rclk
add wave -noupdate /async_fifo_tb/DUT/write_enable
add wave -noupdate /async_fifo_tb/DUT/read_enable
add wave -noupdate /async_fifo_tb/DUT/fifo_occu_in
add wave -noupdate /async_fifo_tb/DUT/write_data_in
add wave -noupdate /async_fifo_tb/DUT/read_data_out
add wave -noupdate /async_fifo_tb/DUT/full
add wave -noupdate /async_fifo_tb/DUT/waddr
add wave -noupdate /async_fifo_tb/DUT/raddr
add wave -noupdate /async_fifo_tb/DUT/wptr
add wave -noupdate /async_fifo_tb/DUT/rptr
add wave -noupdate /async_fifo_tb/DUT/rptr_s
add wave -noupdate /async_fifo_tb/DUT/wen
add wave -noupdate /async_fifo_tb/DUT/ren
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
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {156497 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 248
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
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 100ns NewSig:/async_fifo/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ns -endtime 10000ns NewSig:/async_fifo/reset 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ns -endtime 10000ns NewSig:/async_fifo/wclk 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 15ns -dutycycle 50 -starttime 0ns -endtime 10000ns NewSig:/async_fifo/rclk 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns NewSig:/async_fifo/write_enable 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns NewSig:/async_fifo/read_enable 
wave modify -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 50ns -step 1 -repeat forever -range 7 0 -starttime 0ns -endtime 10000ns NewSig:/async_fifo/write_data_in 
WaveCollapseAll -1
wave clipboard restore
