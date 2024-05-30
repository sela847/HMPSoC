onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal /adc_tb/uut/data_size
add wave -noupdate /adc_tb/uut/clk_sample
add wave -noupdate /adc_tb/uut/enable
add wave -noupdate /adc_tb/uut/clock
add wave -noupdate -radix unsigned /adc_tb/uut/sd
add wave -noupdate -radix binary /adc_tb/uut/q
add wave -noupdate -radix binary /adc_tb/uut/sub_wire0
add wave -noupdate -radix unsigned /adc_tb/uut/mif_count
add wave -noupdate -radix unsigned /adc_tb/uut/counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {99899654 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 95
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
WaveRestoreZoom {99609871 ns} {100494607 ns}
