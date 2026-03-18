# TangNano9KEVASupport

## Tang Nano 9Kに関する設定
### 各バンクの電圧
Tang Nano 9Kの回路図より読み取ったものです。  
FloorPlanで該当バンクの電圧を設定してください。
| バンク番号  | VIO(V) |
| :-------: | :----: |
| 1  | 3.3  |
| 2  | 3.3  |
| 3  | 1.8  |

### ピン設定
Tang Nano 9Kで使っているピンだとわかりやすいように、先頭にsys_をつけました。

| Port | Location | I/O Type|
| :--: | :------: | :-----: |
| sys_sw(S2)  | 3  | LVCMOS18|
| sys_rst_n(S1)  | 4  | LVCMOS18|
| sys_led[5]  | 16  | LVCMOS18|
| sys_led[4]  | 15 | LVCMOS18|
| sys_led[3]  | 14  | LVCMOS18|
| sys_led[2]  | 13  | LVCMOS18|
| sys_led[1]  | 11 | LVCMOS18|
| sys_led[0]  | 10  | LVCMOS18|
| sys_clk  | 52  | LVCMOS33|

## FPGA学習キット Tang nano 9K用に関する設定

### ピン設定
ピンの名称は回路図に合わせてあります。
| Port | Location | I/O Type| Pull Mode|
| :--: | :------: | :-----: | :------: |
| SEG[7] | 41 | LVCMOS33 | NONE |
| SEG[6] | 42 | LVCMOS33 | NONE |
| SEG[5] | 51 | LVCMOS33 | NONE |
| SEG[4] | 53 | LVCMOS33 | NONE |
| SEG[3] | 39 | LVCMOS33 | NONE |
| SEG[2] | 26 | LVCMOS33 | NONE |
| SEG[1] | 25 | LVCMOS33 | NONE |
| SEG[0] | 57 | LVCMOS33 | NONE |
| LED_R | 63 | LVCMOS33 | NONE |
| LED_G | 77 | LVCMOS33 | NONE |
| LED_B | 76 | LVCMOS33 | NONE |
| ENC_SW | 79 | LVCMOS18 | UP |
| ENC_B | 38 | LVCMOS33 | UP |
| ENC_A | 37 | LVCMOS33 | UP |
| DIG_R[3] | 27 | LVCMOS33 | NONE |
| DIG_R[2] | 28 | LVCMOS33 | NONE |
| DIG_R[1] | 29 | LVCMOS33 | NONE |
| DIG_R[0] | 30 | LVCMOS33 | NONE |
| DIG_G[3] | 33 | LVCMOS33 | NONE |
| DIG_G[2] | 36 | LVCMOS33 | NONE |
| DIG_G[1] | 40 | LVCMOS33 | NONE |
| DIG_G[0] | 35 | LVCMOS33 | NONE |
