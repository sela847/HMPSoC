onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /pd_asp_toplevel_tb/in_PD/PD_ASP/clk
add wave -noupdate -radix hexadecimal -childformat {{/pd_asp_toplevel_tb/in_PD/in_PD/send.addr -radix hexadecimal} {/pd_asp_toplevel_tb/in_PD/in_PD/send.data -radix hexadecimal}} -expand -subitemconfig {/pd_asp_toplevel_tb/in_PD/in_PD/send.addr {-height 15 -radix hexadecimal} /pd_asp_toplevel_tb/in_PD/in_PD/send.data {-height 15 -radix hexadecimal}} /pd_asp_toplevel_tb/in_PD/in_PD/send
add wave -noupdate -radix hexadecimal -childformat {{/pd_asp_toplevel_tb/in_PD/PD_ASP/recv.addr -radix hexadecimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/recv.data -radix hexadecimal}} -expand -subitemconfig {/pd_asp_toplevel_tb/in_PD/PD_ASP/recv.addr {-height 15 -radix hexadecimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/recv.data {-height 15 -radix hexadecimal}} /pd_asp_toplevel_tb/in_PD/PD_ASP/recv
add wave -noupdate -radix decimal /pd_asp_toplevel_tb/in_PD/PD_ASP/counter_sig
add wave -noupdate /pd_asp_toplevel_tb/in_PD/PD_ASP/enable
add wave -noupdate -radix hexadecimal /pd_asp_toplevel_tb/in_PD/PD_ASP/corre_curr
add wave -noupdate -radix hexadecimal /pd_asp_toplevel_tb/in_PD/PD_ASP/corre_prev
add wave -noupdate /pd_asp_toplevel_tb/in_PD/PD_ASP/switch
add wave -noupdate -radix hexadecimal /pd_asp_toplevel_tb/in_PD/PD_ASP/send
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4999989227 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 303
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
WaveRestoreZoom {44437986 ps} {56514800 ps}
