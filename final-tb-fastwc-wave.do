onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /async_fifo_tb_final/reset
add wave -noupdate -color {Orange Red} /async_fifo_tb_final/rclk
add wave -noupdate /async_fifo_tb_final/write_enable
add wave -noupdate -color {Orange Red} /async_fifo_tb_final/wclk
add wave -noupdate /async_fifo_tb_final/read_enable
add wave -noupdate -radix unsigned /async_fifo_tb_final/DUT/waddr
add wave -noupdate -radix unsigned /async_fifo_tb_final/write_data_in
add wave -noupdate -radix unsigned /async_fifo_tb_final/DUT/raddr
add wave -noupdate -color Magenta -radix unsigned /async_fifo_tb_final/read_data_out
add wave -noupdate -color Red /async_fifo_tb_final/full
add wave -noupdate -color Cyan /async_fifo_tb_final/empty
add wave -noupdate -format Analog-Step -height 80 -max 14.0 -radix unsigned /async_fifo_tb_final/fifo_occu_out
add wave -noupdate -color {Violet Red} -format Analog-Step -height 80 -max 16.0 -radix unsigned -childformat {{/async_fifo_tb_final/fifo_occu_in(4) -radix unsigned} {/async_fifo_tb_final/fifo_occu_in(3) -radix unsigned} {/async_fifo_tb_final/fifo_occu_in(2) -radix unsigned} {/async_fifo_tb_final/fifo_occu_in(1) -radix unsigned} {/async_fifo_tb_final/fifo_occu_in(0) -radix unsigned}} -subitemconfig {/async_fifo_tb_final/fifo_occu_in(4) {-color {Violet Red} -height 18 -radix unsigned} /async_fifo_tb_final/fifo_occu_in(3) {-color {Violet Red} -height 18 -radix unsigned} /async_fifo_tb_final/fifo_occu_in(2) {-color {Violet Red} -height 18 -radix unsigned} /async_fifo_tb_final/fifo_occu_in(1) {-color {Violet Red} -height 18 -radix unsigned} /async_fifo_tb_final/fifo_occu_in(0) {-color {Violet Red} -height 18 -radix unsigned}} /async_fifo_tb_final/fifo_occu_in
add wave -noupdate /async_fifo_tb_final/DUT/wc/wptr_int
add wave -noupdate -radix unsigned /async_fifo_tb_final/DUT/rptr_s
add wave -noupdate -radix unsigned /async_fifo_tb_final/DUT/rc/wptr_s
add wave -noupdate -radix unsigned /async_fifo_tb_final/DUT/rc/rptr_int
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {801147 ps} 0} {{Cursor 2} {288991 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 265
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
WaveRestoreZoom {0 ps} {2625 ns}
