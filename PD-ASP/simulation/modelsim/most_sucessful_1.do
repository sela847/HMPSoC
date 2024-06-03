onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /pd_asp_toplevel_tb/uut/PD_ASP/clk
add wave -noupdate /pd_asp_toplevel_tb/uut/nios_to_PD/enable_config
add wave -noupdate -radix hexadecimal /pd_asp_toplevel_tb/uut/in_PD/send
add wave -noupdate -radix unsigned /pd_asp_toplevel_tb/uut/in_PD/delay
add wave -noupdate -radix hexadecimal /pd_asp_toplevel_tb/uut/PD_ASP/recv
add wave -noupdate /pd_asp_toplevel_tb/uut/PD_ASP/enable
add wave -noupdate /pd_asp_toplevel_tb/uut/PD_ASP/switch
add wave -noupdate /pd_asp_toplevel_tb/uut/PD_ASP/first
add wave -noupdate -radix unsigned /pd_asp_toplevel_tb/uut/PD_ASP/corre_curr
add wave -noupdate -radix unsigned /pd_asp_toplevel_tb/uut/PD_ASP/corre_prev
add wave -noupdate /pd_asp_toplevel_tb/uut/PD_ASP/identify_bits
add wave -noupdate -radix hexadecimal /pd_asp_toplevel_tb/uut/PD_ASP/send
add wave -noupdate -radix unsigned /pd_asp_toplevel_tb/uut/PD_ASP/counter_sig
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {47134829 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 302
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
WaveRestoreZoom {0 ps} {66393344 ps}
