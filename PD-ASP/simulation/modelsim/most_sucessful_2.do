onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /pd_asp_toplevel_tb/uut/PD_ASP/clk
add wave -noupdate -radix hexadecimal /pd_asp_toplevel_tb/uut/in_PD/correlation
add wave -noupdate -radix hexadecimal -childformat {{/pd_asp_toplevel_tb/uut/in_PD/send.addr -radix hexadecimal} {/pd_asp_toplevel_tb/uut/in_PD/send.data -radix hexadecimal}} -expand -subitemconfig {/pd_asp_toplevel_tb/uut/in_PD/send.addr {-height 15 -radix hexadecimal} /pd_asp_toplevel_tb/uut/in_PD/send.data {-height 15 -radix hexadecimal}} /pd_asp_toplevel_tb/uut/in_PD/send
add wave -noupdate -radix hexadecimal -childformat {{/pd_asp_toplevel_tb/uut/PD_ASP/recv.addr -radix hexadecimal} {/pd_asp_toplevel_tb/uut/PD_ASP/recv.data -radix hexadecimal}} -expand -subitemconfig {/pd_asp_toplevel_tb/uut/PD_ASP/recv.addr {-height 15 -radix hexadecimal} /pd_asp_toplevel_tb/uut/PD_ASP/recv.data {-height 15 -radix hexadecimal}} /pd_asp_toplevel_tb/uut/PD_ASP/recv
add wave -noupdate /pd_asp_toplevel_tb/uut/PD_ASP/enable
add wave -noupdate /pd_asp_toplevel_tb/uut/PD_ASP/switch
add wave -noupdate /pd_asp_toplevel_tb/uut/PD_ASP/first
add wave -noupdate -radix hexadecimal /pd_asp_toplevel_tb/uut/PD_ASP/corre_curr
add wave -noupdate -radix unsigned /pd_asp_toplevel_tb/uut/PD_ASP/corre_prev
add wave -noupdate -radix unsigned /pd_asp_toplevel_tb/uut/PD_ASP/counter_sig
add wave -noupdate /pd_asp_toplevel_tb/uut/PD_ASP/identify_bits
add wave -noupdate -radix hexadecimal /pd_asp_toplevel_tb/uut/PD_ASP/send
add wave -noupdate /pd_asp_toplevel_tb/uut/in_PD/clk
add wave -noupdate /pd_asp_toplevel_tb/delay
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {27370414 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 304
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
WaveRestoreZoom {0 ps} {57409536 ps}
