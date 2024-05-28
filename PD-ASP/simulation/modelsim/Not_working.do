onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /pd_asp_toplevel_tb/in_PD/PD_ASP/clk
add wave -noupdate -radix hexadecimal -childformat {{/pd_asp_toplevel_tb/in_PD/in_PD/send.addr -radix hexadecimal} {/pd_asp_toplevel_tb/in_PD/in_PD/send.data -radix hexadecimal}} -expand -subitemconfig {/pd_asp_toplevel_tb/in_PD/in_PD/send.addr {-height 15 -radix hexadecimal} /pd_asp_toplevel_tb/in_PD/in_PD/send.data {-height 15 -radix hexadecimal}} /pd_asp_toplevel_tb/in_PD/in_PD/send
add wave -noupdate -radix hexadecimal -childformat {{/pd_asp_toplevel_tb/in_PD/PD_ASP/recv.addr -radix hexadecimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/recv.data -radix hexadecimal}} -expand -subitemconfig {/pd_asp_toplevel_tb/in_PD/PD_ASP/recv.addr {-height 15 -radix hexadecimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/recv.data {-height 15 -radix hexadecimal}} /pd_asp_toplevel_tb/in_PD/PD_ASP/recv
add wave -noupdate -radix decimal -childformat {{/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(19) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(18) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(17) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(16) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(15) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(14) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(13) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(12) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(11) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(10) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(9) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(8) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(7) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(6) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(5) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(4) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(3) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(2) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(1) -radix decimal} {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(0) -radix decimal}} -subitemconfig {/pd_asp_toplevel_tb/in_PD/PD_ASP/counter(19) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(18) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(17) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(16) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(15) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(14) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(13) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(12) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(11) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(10) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(9) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(8) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(7) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(6) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(5) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(4) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(3) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(2) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(1) {-height 15 -radix decimal} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter(0) {-height 15 -radix decimal}} /pd_asp_toplevel_tb/in_PD/PD_ASP/counter
add wave -noupdate /pd_asp_toplevel_tb/in_PD/PD_ASP/enable
add wave -noupdate /pd_asp_toplevel_tb/in_PD/PD_ASP/switch
add wave -noupdate -radix hexadecimal /pd_asp_toplevel_tb/in_PD/PD_ASP/corre_curr
add wave -noupdate -radix hexadecimal /pd_asp_toplevel_tb/in_PD/PD_ASP/corre_prev
add wave -noupdate /pd_asp_toplevel_tb/in_PD/in_PD/flag
add wave -noupdate -radix hexadecimal /pd_asp_toplevel_tb/in_PD/PD_ASP/send
add wave -noupdate -radix hexadecimal -childformat {{/pd_asp_toplevel_tb/in_PD/tdma_min/push(0) -radix hexadecimal} {/pd_asp_toplevel_tb/in_PD/tdma_min/push(1) -radix hexadecimal} {/pd_asp_toplevel_tb/in_PD/tdma_min/push(2) -radix hexadecimal} {/pd_asp_toplevel_tb/in_PD/tdma_min/push(3) -radix hexadecimal}} -expand -subitemconfig {/pd_asp_toplevel_tb/in_PD/tdma_min/push(0) {-radix hexadecimal} /pd_asp_toplevel_tb/in_PD/tdma_min/push(1) {-radix hexadecimal} /pd_asp_toplevel_tb/in_PD/tdma_min/push(2) {-radix hexadecimal} /pd_asp_toplevel_tb/in_PD/tdma_min/push(3) {-radix hexadecimal}} /pd_asp_toplevel_tb/in_PD/tdma_min/push
add wave -noupdate -radix hexadecimal -childformat {{/pd_asp_toplevel_tb/in_PD/tdma_min/pull(0) -radix hexadecimal} {/pd_asp_toplevel_tb/in_PD/tdma_min/pull(1) -radix hexadecimal} {/pd_asp_toplevel_tb/in_PD/tdma_min/pull(2) -radix hexadecimal} {/pd_asp_toplevel_tb/in_PD/tdma_min/pull(3) -radix hexadecimal}} -expand -subitemconfig {/pd_asp_toplevel_tb/in_PD/tdma_min/pull(0) {-radix hexadecimal} /pd_asp_toplevel_tb/in_PD/tdma_min/pull(1) {-radix hexadecimal} /pd_asp_toplevel_tb/in_PD/tdma_min/pull(2) {-radix hexadecimal} /pd_asp_toplevel_tb/in_PD/tdma_min/pull(3) {-radix hexadecimal}} /pd_asp_toplevel_tb/in_PD/tdma_min/pull
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {27507933 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 328
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
WaveRestoreZoom {27301665 ps} {27520801 ps}
