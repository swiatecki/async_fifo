onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate {/\sync-tb\/inclk}
add wave -noupdate {/\sync-tb\/ptr_sync}
add wave -noupdate {/\sync-tb\/ptr}
add wave -noupdate {/\sync-tb\/outclk}
add wave -noupdate {/\sync-tb\/reset}
add wave -noupdate {/\sync-tb\/DUT/ptr}
add wave -noupdate {/\sync-tb\/DUT/ptr_sync}
add wave -noupdate {/\sync-tb\/DUT/ptr_gray}
add wave -noupdate {/\sync-tb\/DUT/A}
add wave -noupdate {/\sync-tb\/DUT/B}
add wave -noupdate {/\sync-tb\/DUT/C}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {79854 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 221
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
WaveRestoreZoom {0 ps} {262500 ps}
