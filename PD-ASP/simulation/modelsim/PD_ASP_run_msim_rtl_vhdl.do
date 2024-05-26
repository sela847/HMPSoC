transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib ip
vmap ip ip
vcom -93 -work ip {C:/Users/brian/Documents/HMPSoC/PD-ASP/ip/TdmaMinFifo/TdmaMinFifo.vhd}
vcom -93 -work work {C:/Users/brian/Documents/HMPSoC/PD-ASP/TdmaMin/TdmaMinTypes.vhd}
vcom -93 -work work {C:/Users/brian/Documents/HMPSoC/PD-ASP/TdmaMin/TdmaMinSlots.vhd}
vcom -93 -work work {C:/Users/brian/Documents/HMPSoC/PD-ASP/TdmaMin/TdmaMinSwitch.vhd}
vcom -93 -work work {C:/Users/brian/Documents/HMPSoC/PD-ASP/TdmaMin/TdmaMinInterface.vhd}
vcom -93 -work work {C:/Users/brian/Documents/HMPSoC/PD-ASP/PD_ASP.vhd}
vcom -93 -work work {C:/Users/brian/Documents/HMPSoC/PD-ASP/in_PD.vhd}
vcom -93 -work work {C:/Users/brian/Documents/HMPSoC/PD-ASP/nios_to_PD.vhd}
vcom -93 -work work {C:/Users/brian/Documents/HMPSoC/PD-ASP/TdmaMin/TdmaMinStage.vhd}
vcom -93 -work work {C:/Users/brian/Documents/HMPSoC/PD-ASP/TdmaMin/TdmaMinFabric.vhd}
vcom -93 -work work {C:/Users/brian/Documents/HMPSoC/PD-ASP/TdmaMin/TdmaMin.vhd}
vcom -93 -work work {C:/Users/brian/Documents/HMPSoC/PD-ASP/PD_ASP_TopLevel.vhd}

