//Copyright (C)2014-2026 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.11.01 Education 
//Created Time: 2026-03-18 08:39:20
create_clock -name mainclock -period 13.889 -waveform {0 6.944} [get_ports {sys_clk}]
