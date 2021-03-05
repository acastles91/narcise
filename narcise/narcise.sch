EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L narcise:IRLZ44N-horizontal Q?
U 1 1 603FFFDB
P 3250 2600
F 0 "Q?" H 3454 2646 50  0000 L CNN
F 1 "IRLZ44N-horizontal" H 3454 2555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3500 2525 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Fairchild%20PDFs/BUZ11.pdf" H 3250 2600 50  0001 L CNN
	1    3250 2600
	1    0    0    -1  
$EndComp
$Comp
L ariadne-v3-cache:ariadne-rescue_ESP32-WROOM-32D-ariadne U?
U 1 1 604009DD
P 1600 3400
F 0 "U?" H 1600 4325 50  0000 C CNN
F 1 "ariadne-rescue_ESP32-WROOM-32D-ariadne" H 1600 4234 50  0000 C CNN
F 2 "ariadne:ESP32-DEVKIT" H 1550 3450 50  0001 C CNN
F 3 "" H 1550 3450 50  0001 C CNN
	1    1600 3400
	1    0    0    -1  
$EndComp
$Comp
L ariadne-v3-cache:ariadne-rescue_OKI-78SR-5v-OpenSourceCelluloid-upuaut-rescue U?
U 1 1 60401D4C
P 4650 3500
F 0 "U?" H 4650 3815 50  0000 C CNN
F 1 "ariadne-rescue_OKI-78SR-5v-OpenSourceCelluloid-upuaut-rescue" H 4650 3724 50  0000 C CNN
F 2 "" H 4650 3450 50  0001 C CNN
F 3 "" H 4650 3400 50  0001 C CNN
	1    4650 3500
	1    0    0    -1  
$EndComp
$Sheet
S 9950 2500 2000 1500
U 60402F78
F0 "Sheet60402F77" 50
F1 "file60402F77.sch" 50
$EndSheet
$Comp
L ariadne-rescue:IRF5305-Reverse-Polarity-ariadne Q?
U 1 1 6040B217
P 8300 2900
AR Path="/5FBCFD95/6040B217" Ref="Q?"  Part="1" 
AR Path="/6040B217" Ref="Q?"  Part="1" 
F 0 "Q?" H 8455 2946 50  0000 L CNN
F 1 "IRF5305-Reverse-Polarity" H 8455 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 8450 2825 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf7606pbf.pdf" V 8250 2900 50  0001 L CNN
	1    8300 2900
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6040B21D
P 7650 3500
AR Path="/5FBCFD95/6040B21D" Ref="#FLG?"  Part="1" 
AR Path="/6040B21D" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 7650 3575 50  0001 C CNN
F 1 "PWR_FLAG" H 7650 3673 50  0000 C CNN
F 2 "" H 7650 3500 50  0001 C CNN
F 3 "~" H 7650 3500 50  0001 C CNN
	1    7650 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 6040B223
P 8350 3600
AR Path="/5FBCFD95/6040B223" Ref="#FLG?"  Part="1" 
AR Path="/6040B223" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 8350 3675 50  0001 C CNN
F 1 "PWR_FLAG" H 8350 3773 50  0000 C CNN
F 2 "" H 8350 3600 50  0001 C CNN
F 3 "~" H 8350 3600 50  0001 C CNN
	1    8350 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 3100 8350 3250
$Comp
L power:GND #PWR?
U 1 1 6040B22A
P 7650 3950
AR Path="/5FBCFD95/6040B22A" Ref="#PWR?"  Part="1" 
AR Path="/6040B22A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7650 3700 50  0001 C CNN
F 1 "GND" H 7655 3777 50  0000 C CNN
F 2 "" H 7650 3950 50  0001 C CNN
F 3 "" H 7650 3950 50  0001 C CNN
	1    7650 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3850 7650 3500
$Comp
L Device:D_Schottky D?
U 1 1 6040B231
P 8200 3250
AR Path="/5FBCFD95/6040B231" Ref="D?"  Part="1" 
AR Path="/6040B231" Ref="D?"  Part="1" 
F 0 "D?" H 8200 3033 50  0000 C CNN
F 1 "D_Zener-10V" H 8200 3124 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 8200 3250 50  0001 C CNN
F 3 "~" H 8200 3250 50  0001 C CNN
	1    8200 3250
	-1   0    0    1   
$EndComp
Connection ~ 8350 3250
Wire Wire Line
	8350 3250 8350 3600
Wire Wire Line
	8050 3250 8050 2900
$Comp
L Device:R R?
U 1 1 6040B23A
P 7850 2900
AR Path="/5FBCFD95/6040B23A" Ref="R?"  Part="1" 
AR Path="/6040B23A" Ref="R?"  Part="1" 
F 0 "R?" V 7643 2900 50  0000 C CNN
F 1 "100K" V 7734 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7780 2900 50  0001 C CNN
F 3 "~" H 7850 2900 50  0001 C CNN
	1    7850 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 2900 8050 2900
Connection ~ 8050 2900
Wire Wire Line
	7700 2900 7650 2900
Wire Wire Line
	8350 3600 8350 3850
Text GLabel 7950 1500 3    50   Input ~ 0
POWER-IN+
Text GLabel 7750 1500 3    50   Input ~ 0
POWER-IN-
Connection ~ 7650 3500
Wire Wire Line
	7650 3500 7650 2900
Connection ~ 8350 3600
Text Notes 8350 1550 0    50   ~ 0
Correct polarity protection\n
Wire Notes Line
	6850 750  6850 4350
Wire Notes Line
	6850 4350 9700 4350
Wire Notes Line
	9700 4350 9700 750 
Wire Notes Line
	9700 750  6850 750 
Text GLabel 8800 3850 2    50   Input ~ 0
VIN+Master1
Text GLabel 7300 3850 0    50   Input ~ 0
VIN-Master1
Wire Wire Line
	8050 2150 8350 2150
Wire Wire Line
	7950 1500 8050 1500
Wire Wire Line
	8050 1500 8050 2150
Wire Wire Line
	7650 1500 7650 2900
Connection ~ 7650 2900
Wire Wire Line
	7650 1500 7750 1500
$Comp
L ariadne-rescue:POWER_CONNECTOR-DCJ250-20-B-K1-A-ariadne U?
U 1 1 6040B256
P 7850 1250
AR Path="/5FBCFD95/6040B256" Ref="U?"  Part="1" 
AR Path="/6040B256" Ref="U?"  Part="1" 
F 0 "U?" H 7622 1204 50  0000 R CNN
F 1 "POWER_CONNECTOR-DCJ250-20-B-K1-A" H 7622 1295 50  0000 R CNN
F 2 "ariadne:POWER_JACK_DCJ250-20-B-K1-A" H 7850 1250 50  0001 C CNN
F 3 "" H 7850 1250 50  0001 C CNN
	1    7850 1250
	-1   0    0    1   
$EndComp
NoConn ~ 7850 1000
Wire Wire Line
	8350 3850 8800 3850
Wire Wire Line
	7650 3850 7300 3850
Wire Wire Line
	7650 3850 7650 3950
Connection ~ 7650 3850
Wire Wire Line
	8350 2150 8350 2700
$Comp
L power:+36V #PWR?
U 1 1 6040B262
P 8350 3850
F 0 "#PWR?" H 8350 3700 50  0001 C CNN
F 1 "+36V" H 8365 4023 50  0000 C CNN
F 2 "" H 8350 3850 50  0001 C CNN
F 3 "" H 8350 3850 50  0001 C CNN
	1    8350 3850
	-1   0    0    1   
$EndComp
Connection ~ 8350 3850
Text GLabel 8800 3850 3    50   Input ~ 0
VIN+Master2
Text GLabel 7300 3850 3    50   Input ~ 0
VIN-Master2
$EndSCHEMATC
