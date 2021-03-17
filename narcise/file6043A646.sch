EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L ariadne-rescue:IRF5305-Reverse-Polarity-ariadne Q?
U 1 1 5FC255CB
P 2650 3750
AR Path="/5FBCFD95/5FC255CB" Ref="Q?"  Part="1" 
AR Path="/5FC255CB" Ref="Q1"  Part="1" 
AR Path="/6043A647/5FC255CB" Ref="Q1"  Part="1" 
F 0 "Q1" H 2805 3796 50  0000 L CNN
F 1 "IRF5305-Reverse-Polarity" H 2805 3705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 2800 3675 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf7606pbf.pdf" V 2600 3750 50  0001 L CNN
	1    2650 3750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5FC255D1
P 2000 4350
AR Path="/5FBCFD95/5FC255D1" Ref="#FLG?"  Part="1" 
AR Path="/5FC255D1" Ref="#FLG01"  Part="1" 
AR Path="/6043A647/5FC255D1" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 2000 4425 50  0001 C CNN
F 1 "PWR_FLAG" H 2000 4523 50  0000 C CNN
F 2 "" H 2000 4350 50  0001 C CNN
F 3 "~" H 2000 4350 50  0001 C CNN
	1    2000 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5FC255D7
P 2700 4450
AR Path="/5FBCFD95/5FC255D7" Ref="#FLG?"  Part="1" 
AR Path="/5FC255D7" Ref="#FLG02"  Part="1" 
AR Path="/6043A647/5FC255D7" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 2700 4525 50  0001 C CNN
F 1 "PWR_FLAG" H 2700 4623 50  0000 C CNN
F 2 "" H 2700 4450 50  0001 C CNN
F 3 "~" H 2700 4450 50  0001 C CNN
	1    2700 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 3950 2700 4100
$Comp
L power:GND #PWR?
U 1 1 5FC255DF
P 2000 4800
AR Path="/5FBCFD95/5FC255DF" Ref="#PWR?"  Part="1" 
AR Path="/5FC255DF" Ref="#PWR01"  Part="1" 
AR Path="/6043A647/5FC255DF" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 2000 4550 50  0001 C CNN
F 1 "GND" H 2005 4627 50  0000 C CNN
F 2 "" H 2000 4800 50  0001 C CNN
F 3 "" H 2000 4800 50  0001 C CNN
	1    2000 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4700 2000 4350
$Comp
L Device:D_Schottky D?
U 1 1 5FC255E6
P 2550 4100
AR Path="/5FBCFD95/5FC255E6" Ref="D?"  Part="1" 
AR Path="/5FC255E6" Ref="D1"  Part="1" 
AR Path="/6043A647/5FC255E6" Ref="D1"  Part="1" 
F 0 "D1" H 2550 3883 50  0000 C CNN
F 1 "D_Zener-10V" H 2550 3974 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 2550 4100 50  0001 C CNN
F 3 "~" H 2550 4100 50  0001 C CNN
	1    2550 4100
	-1   0    0    1   
$EndComp
Connection ~ 2700 4100
Wire Wire Line
	2700 4100 2700 4450
Wire Wire Line
	2400 4100 2400 3750
$Comp
L Device:R R?
U 1 1 5FC255EF
P 2200 3750
AR Path="/5FBCFD95/5FC255EF" Ref="R?"  Part="1" 
AR Path="/5FC255EF" Ref="R1"  Part="1" 
AR Path="/6043A647/5FC255EF" Ref="R1"  Part="1" 
F 0 "R1" V 1993 3750 50  0000 C CNN
F 1 "100K" V 2084 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2130 3750 50  0001 C CNN
F 3 "~" H 2200 3750 50  0001 C CNN
	1    2200 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 3750 2400 3750
Connection ~ 2400 3750
Wire Wire Line
	2050 3750 2000 3750
Wire Wire Line
	2700 4450 2700 4700
Text GLabel 2300 2350 3    50   Input ~ 0
POWER-IN+
Text GLabel 2100 2350 3    50   Input ~ 0
POWER-IN-
Connection ~ 2000 4350
Wire Wire Line
	2000 4350 2000 3750
Connection ~ 2700 4450
Text Notes 2700 2400 0    50   ~ 0
Correct polarity protection\n
Wire Notes Line
	1200 1600 1200 5200
Wire Notes Line
	1200 5200 4050 5200
Wire Notes Line
	4050 5200 4050 1600
Wire Notes Line
	4050 1600 1200 1600
Text GLabel 3150 4700 2    50   Input ~ 0
VIN+Master1
Text GLabel 1650 4700 0    50   Input ~ 0
VIN-Master1
Wire Wire Line
	2400 3000 2700 3000
Wire Wire Line
	2300 2350 2400 2350
Wire Wire Line
	2400 2350 2400 3000
Wire Wire Line
	2000 2350 2000 3750
Connection ~ 2000 3750
Wire Wire Line
	2000 2350 2100 2350
$Comp
L ariadne-rescue:POWER_CONNECTOR-DCJ250-20-B-K1-A-ariadne U?
U 1 1 5FC25618
P 2200 2100
AR Path="/5FBCFD95/5FC25618" Ref="U?"  Part="1" 
AR Path="/5FC25618" Ref="U3"  Part="1" 
AR Path="/6043A647/5FC25618" Ref="U3"  Part="1" 
F 0 "U3" H 1972 2054 50  0000 R CNN
F 1 "POWER_CONNECTOR-DCJ250-20-B-K1-A" H 1972 2145 50  0000 R CNN
F 2 "ariadne:POWER_JACK_DCJ250-20-B-K1-A" H 2200 2100 50  0001 C CNN
F 3 "" H 2200 2100 50  0001 C CNN
	1    2200 2100
	-1   0    0    1   
$EndComp
NoConn ~ 2200 1850
Wire Wire Line
	2700 4700 3150 4700
Wire Wire Line
	2000 4700 1650 4700
Wire Wire Line
	2000 4700 2000 4800
Connection ~ 2000 4700
Wire Wire Line
	2700 3000 2700 3550
$Comp
L power:+36V #PWR02
U 1 1 5FC26F30
P 2700 4700
F 0 "#PWR02" H 2700 4550 50  0001 C CNN
F 1 "+36V" H 2715 4873 50  0000 C CNN
F 2 "" H 2700 4700 50  0001 C CNN
F 3 "" H 2700 4700 50  0001 C CNN
	1    2700 4700
	-1   0    0    1   
$EndComp
Connection ~ 2700 4700
$Comp
L Device:C Murata-Ceramic-Capacitor-50v1-22uF?
U 1 1 5FC2C3BE
P 5850 2100
AR Path="/5FBCFD95/5FC2C3BE" Ref="Murata-Ceramic-Capacitor-50v1-22uF?"  Part="1" 
AR Path="/5FC2C3BE" Ref="Murata-Ceramic-Capacitor-50v1-22uF1"  Part="1" 
AR Path="/6043A647/5FC2C3BE" Ref="Murata-Ceramic-Capacitor-50v1-22uF1"  Part="1" 
F 0 "Murata-Ceramic-Capacitor-50v1-22uF1" H 4900 1800 50  0000 L CNN
F 1 "C" H 5965 2055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5888 1950 50  0001 C CNN
F 3 "~" H 5850 2100 50  0001 C CNN
	1    5850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1950 5850 1950
Wire Wire Line
	5550 1950 5850 1950
Connection ~ 5850 1950
$Comp
L power:GND #PWR?
U 1 1 5FC2C3C7
P 6500 2600
AR Path="/5FBCFD95/5FC2C3C7" Ref="#PWR?"  Part="1" 
AR Path="/5FC2C3C7" Ref="#PWR07"  Part="1" 
AR Path="/6043A647/5FC2C3C7" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 6500 2350 50  0001 C CNN
F 1 "GND" H 6505 2427 50  0000 C CNN
F 2 "" H 6500 2600 50  0001 C CNN
F 3 "" H 6500 2600 50  0001 C CNN
	1    6500 2600
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:OKI-78SR-12v-OpenSourceCelluloid-upuaut-rescue U?
U 1 1 5FC2C3CD
P 6500 2000
AR Path="/5FBCFD95/5FC2C3CD" Ref="U?"  Part="1" 
AR Path="/5FC2C3CD" Ref="U10"  Part="1" 
AR Path="/6043A647/5FC2C3CD" Ref="U10"  Part="1" 
F 0 "U10" H 6500 2315 50  0000 C CNN
F 1 "OKI-78SR-12v" H 6500 2224 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_muRata_OKI-78SR_Vertical" H 6500 1950 50  0001 C CNN
F 3 "" H 6500 1900 50  0001 C CNN
	1    6500 2000
	1    0    0    -1  
$EndComp
Text Notes 4700 1500 0    50   ~ 0
12V voltage regulator\n
$Comp
L power:GND #PWR?
U 1 1 5FC2C3D4
P 5850 2600
AR Path="/5FBCFD95/5FC2C3D4" Ref="#PWR?"  Part="1" 
AR Path="/5FC2C3D4" Ref="#PWR05"  Part="1" 
AR Path="/6043A647/5FC2C3D4" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 5850 2350 50  0001 C CNN
F 1 "GND" H 5855 2427 50  0000 C CNN
F 2 "" H 5850 2600 50  0001 C CNN
F 3 "" H 5850 2600 50  0001 C CNN
	1    5850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2250 5850 2600
Wire Wire Line
	6500 2350 6500 2600
$Comp
L power:GND #PWR?
U 1 1 5FC2C3DC
P 7000 2600
AR Path="/5FBCFD95/5FC2C3DC" Ref="#PWR?"  Part="1" 
AR Path="/5FC2C3DC" Ref="#PWR09"  Part="1" 
AR Path="/6043A647/5FC2C3DC" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 7000 2350 50  0001 C CNN
F 1 "GND" H 7005 2427 50  0000 C CNN
F 2 "" H 7000 2600 50  0001 C CNN
F 3 "" H 7000 2600 50  0001 C CNN
	1    7000 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2600 7000 2250
Wire Notes Line
	4700 1600 4700 2950
Wire Notes Line
	4700 2950 7600 2950
Wire Notes Line
	7600 2950 7600 1600
Wire Notes Line
	7600 1600 4700 1600
$Comp
L power:+12V #PWR?
U 1 1 5FC2C3ED
P 7200 1950
AR Path="/5FBCFD95/5FC2C3ED" Ref="#PWR?"  Part="1" 
AR Path="/5FC2C3ED" Ref="#PWR011"  Part="1" 
AR Path="/6043A647/5FC2C3ED" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 7200 1800 50  0001 C CNN
F 1 "+12V" H 7215 2123 50  0000 C CNN
F 2 "" H 7200 1950 50  0001 C CNN
F 3 "" H 7200 1950 50  0001 C CNN
	1    7200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1950 7000 1950
$Comp
L Device:C Murata-Ceramic-Capacitor-50v1-22uF?
U 1 1 5FC2C3F4
P 7000 2100
AR Path="/5FBCFD95/5FC2C3F4" Ref="Murata-Ceramic-Capacitor-50v1-22uF?"  Part="1" 
AR Path="/5FC2C3F4" Ref="Murata-Ceramic-Capacitor-50v1-22uF3"  Part="1" 
AR Path="/6043A647/5FC2C3F4" Ref="Murata-Ceramic-Capacitor-50v1-22uF3"  Part="1" 
F 0 "Murata-Ceramic-Capacitor-50v1-22uF3" H 7050 1800 50  0000 L CNN
F 1 "C" H 7115 2055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7038 1950 50  0001 C CNN
F 3 "~" H 7000 2100 50  0001 C CNN
	1    7000 2100
	1    0    0    -1  
$EndComp
Connection ~ 7000 1950
Wire Wire Line
	7000 1950 7200 1950
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5FC2C3FC
P 7200 1950
AR Path="/5FBCFD95/5FC2C3FC" Ref="#FLG?"  Part="1" 
AR Path="/5FC2C3FC" Ref="#FLG03"  Part="1" 
AR Path="/6043A647/5FC2C3FC" Ref="#FLG03"  Part="1" 
F 0 "#FLG03" H 7200 2025 50  0001 C CNN
F 1 "PWR_FLAG" H 7200 2123 50  0000 C CNN
F 2 "" H 7200 1950 50  0001 C CNN
F 3 "~" H 7200 1950 50  0001 C CNN
	1    7200 1950
	0    1    1    0   
$EndComp
Connection ~ 7200 1950
Text Notes 4700 3300 0    50   ~ 0
5V voltage regulator\n\n
$Comp
L Device:C Murata-Ceramic-Capacitor-50v1-22uF?
U 1 1 5FC36E09
P 5850 3850
AR Path="/5FBCFD95/5FC36E09" Ref="Murata-Ceramic-Capacitor-50v1-22uF?"  Part="1" 
AR Path="/5FC36E09" Ref="Murata-Ceramic-Capacitor-50v1-22uF2"  Part="1" 
AR Path="/6043A647/5FC36E09" Ref="Murata-Ceramic-Capacitor-50v1-22uF2"  Part="1" 
F 0 "Murata-Ceramic-Capacitor-50v1-22uF2" H 4850 3550 50  0000 L CNN
F 1 "C" H 5965 3805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5888 3700 50  0001 C CNN
F 3 "~" H 5850 3850 50  0001 C CNN
	1    5850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3700 5850 3700
Wire Wire Line
	5550 3700 5850 3700
Connection ~ 5850 3700
$Comp
L power:GND #PWR?
U 1 1 5FC36E12
P 6500 4350
AR Path="/5FBCFD95/5FC36E12" Ref="#PWR?"  Part="1" 
AR Path="/5FC36E12" Ref="#PWR08"  Part="1" 
AR Path="/6043A647/5FC36E12" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 6500 4100 50  0001 C CNN
F 1 "GND" H 6505 4177 50  0000 C CNN
F 2 "" H 6500 4350 50  0001 C CNN
F 3 "" H 6500 4350 50  0001 C CNN
	1    6500 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FC36E18
P 5850 4350
AR Path="/5FBCFD95/5FC36E18" Ref="#PWR?"  Part="1" 
AR Path="/5FC36E18" Ref="#PWR06"  Part="1" 
AR Path="/6043A647/5FC36E18" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 5850 4100 50  0001 C CNN
F 1 "GND" H 5855 4177 50  0000 C CNN
F 2 "" H 5850 4350 50  0001 C CNN
F 3 "" H 5850 4350 50  0001 C CNN
	1    5850 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4000 5850 4350
Wire Wire Line
	6500 4100 6500 4350
$Comp
L power:GND #PWR?
U 1 1 5FC36E20
P 7000 4350
AR Path="/5FBCFD95/5FC36E20" Ref="#PWR?"  Part="1" 
AR Path="/5FC36E20" Ref="#PWR010"  Part="1" 
AR Path="/6043A647/5FC36E20" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 7000 4100 50  0001 C CNN
F 1 "GND" H 7005 4177 50  0000 C CNN
F 2 "" H 7000 4350 50  0001 C CNN
F 3 "" H 7000 4350 50  0001 C CNN
	1    7000 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4350 7000 4000
$Comp
L power:+5V #PWR?
U 1 1 5FC36E2D
P 7200 3700
AR Path="/5FBCFD95/5FC36E2D" Ref="#PWR?"  Part="1" 
AR Path="/5FC36E2D" Ref="#PWR012"  Part="1" 
AR Path="/6043A647/5FC36E2D" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 7200 3550 50  0001 C CNN
F 1 "+5V" H 7215 3873 50  0000 C CNN
F 2 "" H 7200 3700 50  0001 C CNN
F 3 "" H 7200 3700 50  0001 C CNN
	1    7200 3700
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:OKI-78SR-5v-OpenSourceCelluloid-upuaut-rescue U?
U 1 1 5FC36E33
P 6500 3750
AR Path="/5FBCFD95/5FC36E33" Ref="U?"  Part="1" 
AR Path="/5FC36E33" Ref="U11"  Part="1" 
AR Path="/6043A647/5FC36E33" Ref="U11"  Part="1" 
F 0 "U11" H 6500 4065 50  0000 C CNN
F 1 "OKI-78SR-5v" H 6500 3974 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_muRata_OKI-78SR_Vertical" H 6500 3700 50  0001 C CNN
F 3 "" H 6500 3650 50  0001 C CNN
	1    6500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3700 7000 3700
$Comp
L Device:C Murata-Ceramic-Capacitor-50v1-22uF?
U 1 1 5FC36E3A
P 7000 3850
AR Path="/5FBCFD95/5FC36E3A" Ref="Murata-Ceramic-Capacitor-50v1-22uF?"  Part="1" 
AR Path="/5FC36E3A" Ref="Murata-Ceramic-Capacitor-50v1-22uF4"  Part="1" 
AR Path="/6043A647/5FC36E3A" Ref="Murata-Ceramic-Capacitor-50v1-22uF4"  Part="1" 
F 0 "Murata-Ceramic-Capacitor-50v1-22uF4" H 7150 3550 50  0000 L CNN
F 1 "C" H 7115 3805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7038 3700 50  0001 C CNN
F 3 "~" H 7000 3850 50  0001 C CNN
	1    7000 3850
	1    0    0    -1  
$EndComp
Connection ~ 7000 3700
Wire Wire Line
	7000 3700 7200 3700
Wire Notes Line
	4700 3250 8750 3250
Wire Notes Line
	4700 3250 4700 4650
Wire Notes Line
	8750 3250 8750 4650
Wire Notes Line
	4700 4650 8750 4650
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5FC36E46
P 7200 3700
AR Path="/5FBCFD95/5FC36E46" Ref="#FLG?"  Part="1" 
AR Path="/5FC36E46" Ref="#FLG04"  Part="1" 
AR Path="/6043A647/5FC36E46" Ref="#FLG04"  Part="1" 
F 0 "#FLG04" H 7200 3775 50  0001 C CNN
F 1 "PWR_FLAG" H 7200 3873 50  0000 C CNN
F 2 "" H 7200 3700 50  0001 C CNN
F 3 "~" H 7200 3700 50  0001 C CNN
	1    7200 3700
	0    1    1    0   
$EndComp
Connection ~ 7200 3700
$Comp
L ariadne-v3-rescue:Meanwell-LDD-1200LW-ariadne-ariadne-rescue U?
U 1 1 5FC415B8
P 4200 8500
AR Path="/5FBCFD95/5FC415B8" Ref="U?"  Part="1" 
AR Path="/5FC415B8" Ref="U9"  Part="1" 
AR Path="/6043A647/5FC415B8" Ref="U9"  Part="1" 
F 0 "U9" H 4200 8865 50  0000 C CNN
F 1 "Meanwell-LDD-1200LW" H 4200 8774 50  0000 C CNN
F 2 "ariadne:Meanwell-LDD-1xxxL" H 4000 8500 50  0001 C CNN
F 3 "" H 4000 8500 50  0001 C CNN
	1    4200 8500
	1    0    0    -1  
$EndComp
Text GLabel 4650 8400 2    50   Input ~ 0
LDD_1-OUT+
Text GLabel 4650 8600 2    50   Input ~ 0
LDD_1-OUT-
$Comp
L ariadne-rescue:Meanwell-LDD-1200LW-connector-ariadne U?
U 1 1 5FC415C0
P 2350 6750
AR Path="/5FBCFD95/5FC415C0" Ref="U?"  Part="1" 
AR Path="/5FC415C0" Ref="U5"  Part="1" 
AR Path="/6043A647/5FC415C0" Ref="U5"  Part="1" 
F 0 "U5" H 2728 6738 50  0000 L CNN
F 1 "Meanwell-LDD-1200LW-connector" H 2728 6647 50  0000 L CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0315_1x03_P3.00mm_Vertical" H 2150 6750 50  0001 C CNN
F 3 "" H 2150 6750 50  0001 C CNN
	1    2350 6750
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:Meanwell-LDD-1200LW-connector-ariadne U?
U 1 1 5FC415C6
P 1750 8500
AR Path="/5FBCFD95/5FC415C6" Ref="U?"  Part="1" 
AR Path="/5FC415C6" Ref="U2"  Part="1" 
AR Path="/6043A647/5FC415C6" Ref="U2"  Part="1" 
F 0 "U2" H 1692 8865 50  0000 C CNN
F 1 "Meanwell-LDD-1200LW-connector" H 1692 8774 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0315_1x03_P3.00mm_Vertical" H 1550 8500 50  0001 C CNN
F 3 "" H 1550 8500 50  0001 C CNN
	1    1750 8500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 7050 2350 7300
Wire Wire Line
	1750 8800 3300 8800
Wire Notes Line
	1200 10100 5600 10100
Wire Notes Line
	5600 10100 5600 6150
Wire Notes Line
	5600 6150 1200 6150
Wire Notes Line
	1200 6150 1200 10100
$Comp
L ariadne-rescue:ESP32-WROOM-32D-ariadne U?
U 1 1 5FC4E8B5
P 12400 2400
AR Path="/5FBCFD95/5FC4E8B5" Ref="U?"  Part="1" 
AR Path="/5FC4E8B5" Ref="U24"  Part="1" 
AR Path="/6043A647/5FC4E8B5" Ref="U24"  Part="1" 
F 0 "U24" H 12400 3325 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 12400 3234 50  0000 C CNN
F 2 "ariadne:ESP32-DEVKIT" H 12350 2450 50  0001 C CNN
F 3 "" H 12350 2450 50  0001 C CNN
	1    12400 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FC4E8BF
P 11150 3100
AR Path="/5FBCFD95/5FC4E8BF" Ref="#PWR?"  Part="1" 
AR Path="/5FC4E8BF" Ref="#PWR013"  Part="1" 
AR Path="/6043A647/5FC4E8BF" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 11150 2950 50  0001 C CNN
F 1 "+5V" H 11165 3273 50  0000 C CNN
F 2 "" H 11150 3100 50  0001 C CNN
F 3 "" H 11150 3100 50  0001 C CNN
	1    11150 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FC4E8CB
P 11400 3000
AR Path="/5FBCFD95/5FC4E8CB" Ref="#PWR?"  Part="1" 
AR Path="/5FC4E8CB" Ref="#PWR015"  Part="1" 
AR Path="/6043A647/5FC4E8CB" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 11400 2750 50  0001 C CNN
F 1 "GND" H 11405 2827 50  0000 C CNN
F 2 "" H 11400 3000 50  0001 C CNN
F 3 "" H 11400 3000 50  0001 C CNN
	1    11400 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	11400 3000 11800 3000
Wire Wire Line
	11150 3100 11800 3100
Text GLabel 13000 3000 2    50   Input ~ 0
BOARD_GND
Text GLabel 2350 7300 3    50   Input ~ 0
DIM-1
Text GLabel 11800 2900 0    50   Input ~ 0
DIM-1
Text GLabel 11800 2800 0    50   Input ~ 0
DIM-2
Text GLabel 11800 2700 0    50   Input ~ 0
DIM-3
Text GLabel 11800 2600 0    50   Input ~ 0
DIM-4
Text GLabel 11800 2500 0    50   Input ~ 0
DIM-5
Text GLabel 11800 2400 0    50   Input ~ 0
DIM-6
$Comp
L power:GND #PWR?
U 1 1 5FC6D133
P 11300 4600
AR Path="/5FBCFD95/5FC6D133" Ref="#PWR?"  Part="1" 
AR Path="/5FC6D133" Ref="#PWR014"  Part="1" 
AR Path="/6043A647/5FC6D133" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 11300 4350 50  0001 C CNN
F 1 "GND" H 11305 4427 50  0000 C CNN
F 2 "" H 11300 4600 50  0001 C CNN
F 3 "" H 11300 4600 50  0001 C CNN
	1    11300 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5FC6D139
P 11850 4600
AR Path="/5FBCFD95/5FC6D139" Ref="#PWR?"  Part="1" 
AR Path="/5FC6D139" Ref="#PWR016"  Part="1" 
AR Path="/6043A647/5FC6D139" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 11850 4450 50  0001 C CNN
F 1 "+12V" H 11865 4773 50  0000 C CNN
F 2 "" H 11850 4600 50  0001 C CNN
F 3 "" H 11850 4600 50  0001 C CNN
	1    11850 4600
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FC6D13F
P 12400 4600
AR Path="/5FBCFD95/5FC6D13F" Ref="#PWR?"  Part="1" 
AR Path="/5FC6D13F" Ref="#PWR017"  Part="1" 
AR Path="/6043A647/5FC6D13F" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 12400 4450 50  0001 C CNN
F 1 "+5V" H 12415 4773 50  0000 C CNN
F 2 "" H 12400 4600 50  0001 C CNN
F 3 "" H 12400 4600 50  0001 C CNN
	1    12400 4600
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FC6D145
P 13000 4600
AR Path="/5FBCFD95/5FC6D145" Ref="#PWR?"  Part="1" 
AR Path="/5FC6D145" Ref="#PWR018"  Part="1" 
AR Path="/6043A647/5FC6D145" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 13000 4450 50  0001 C CNN
F 1 "+3.3V" H 13015 4773 50  0000 C CNN
F 2 "" H 13000 4600 50  0001 C CNN
F 3 "" H 13000 4600 50  0001 C CNN
	1    13000 4600
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 5FC6D14B
P 11100 4400
AR Path="/5FBCFD95/5FC6D14B" Ref="J?"  Part="1" 
AR Path="/5FC6D14B" Ref="J1"  Part="1" 
AR Path="/6043A647/5FC6D14B" Ref="J1"  Part="1" 
F 0 "J1" H 11208 4781 50  0000 C CNN
F 1 "Conn_01x05_Male" H 11208 4690 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 11100 4400 50  0001 C CNN
F 3 "~" H 11100 4400 50  0001 C CNN
	1    11100 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 5FC6D151
P 11650 4400
AR Path="/5FBCFD95/5FC6D151" Ref="J?"  Part="1" 
AR Path="/5FC6D151" Ref="J3"  Part="1" 
AR Path="/6043A647/5FC6D151" Ref="J3"  Part="1" 
F 0 "J3" H 11758 4781 50  0000 C CNN
F 1 "Conn_01x05_Male" H 11758 4690 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 11650 4400 50  0001 C CNN
F 3 "~" H 11650 4400 50  0001 C CNN
	1    11650 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 5FC6D157
P 12200 4400
AR Path="/5FBCFD95/5FC6D157" Ref="J?"  Part="1" 
AR Path="/5FC6D157" Ref="J4"  Part="1" 
AR Path="/6043A647/5FC6D157" Ref="J4"  Part="1" 
F 0 "J4" H 12308 4781 50  0000 C CNN
F 1 "Conn_01x05_Male" H 12308 4690 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 12200 4400 50  0001 C CNN
F 3 "~" H 12200 4400 50  0001 C CNN
	1    12200 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 5FC6D15D
P 12800 4400
AR Path="/5FBCFD95/5FC6D15D" Ref="J?"  Part="1" 
AR Path="/5FC6D15D" Ref="J5"  Part="1" 
AR Path="/6043A647/5FC6D15D" Ref="J5"  Part="1" 
F 0 "J5" H 12908 4781 50  0000 C CNN
F 1 "Conn_01x05_Male" H 12908 4690 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 12800 4400 50  0001 C CNN
F 3 "~" H 12800 4400 50  0001 C CNN
	1    12800 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11300 4200 11300 4300
Connection ~ 11300 4600
Connection ~ 11300 4300
Wire Wire Line
	11300 4300 11300 4400
Connection ~ 11300 4400
Wire Wire Line
	11300 4400 11300 4500
Connection ~ 11300 4500
Wire Wire Line
	11300 4500 11300 4600
Wire Wire Line
	11850 4200 11850 4300
Connection ~ 11850 4600
Connection ~ 11850 4300
Wire Wire Line
	11850 4300 11850 4400
Connection ~ 11850 4400
Wire Wire Line
	11850 4400 11850 4500
Connection ~ 11850 4500
Wire Wire Line
	11850 4500 11850 4600
Wire Wire Line
	12400 4200 12400 4300
Connection ~ 12400 4600
Connection ~ 12400 4300
Wire Wire Line
	12400 4300 12400 4400
Connection ~ 12400 4400
Wire Wire Line
	12400 4400 12400 4500
Connection ~ 12400 4500
Wire Wire Line
	12400 4500 12400 4600
Wire Wire Line
	13000 4200 13000 4300
Connection ~ 13000 4600
Connection ~ 13000 4300
Wire Wire Line
	13000 4300 13000 4400
Connection ~ 13000 4400
Wire Wire Line
	13000 4400 13000 4500
Connection ~ 13000 4500
Wire Wire Line
	13000 4500 13000 4600
$Comp
L power:+3.3V #PWR?
U 1 1 5FC827A8
P 13300 3100
AR Path="/5FBCFD95/5FC827A8" Ref="#PWR?"  Part="1" 
AR Path="/5FC827A8" Ref="#PWR019"  Part="1" 
AR Path="/6043A647/5FC827A8" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 13300 2950 50  0001 C CNN
F 1 "+3.3V" H 13315 3273 50  0000 C CNN
F 2 "" H 13300 3100 50  0001 C CNN
F 3 "" H 13300 3100 50  0001 C CNN
	1    13300 3100
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG05
U 1 1 5FC8326A
P 13100 3100
F 0 "#FLG05" H 13100 3175 50  0001 C CNN
F 1 "PWR_FLAG" H 13100 3273 50  0000 C CNN
F 2 "" H 13100 3100 50  0001 C CNN
F 3 "~" H 13100 3100 50  0001 C CNN
	1    13100 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	13000 3100 13100 3100
Connection ~ 13100 3100
Wire Wire Line
	13100 3100 13300 3100
$Comp
L ariadne-rescue:Bridgelux-Vero-18-mech-v3-ariadne U35
U 1 1 5FCA279B
P 19100 1550
F 0 "U35" H 19228 1538 50  0000 L CNN
F 1 "Bridgelux-Vero-18-mech-v3-ariadne" H 19228 1447 50  0000 L CNN
F 2 "ariadne:Vero-18-mech" H 19100 1550 50  0001 C CNN
F 3 "" H 19100 1550 50  0001 C CNN
	1    19100 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 8400 3750 8400
Wire Wire Line
	2200 8600 3750 8600
Wire Wire Line
	3300 8800 3300 8050
Wire Wire Line
	3300 8050 4200 8050
Wire Wire Line
	3750 8700 3750 8600
Connection ~ 3750 8600
Wire Wire Line
	3750 8400 3750 8300
Connection ~ 3750 8400
Wire Wire Line
	4650 8400 4650 8300
Wire Wire Line
	4650 8700 4650 8600
$Comp
L ariadne-v3-rescue:Meanwell-LDD-1200LW-ariadne-ariadne-rescue U?
U 1 1 5FCE0760
P 4150 12900
AR Path="/5FBCFD95/5FCE0760" Ref="U?"  Part="1" 
AR Path="/5FCE0760" Ref="U8"  Part="1" 
AR Path="/6043A647/5FCE0760" Ref="U8"  Part="1" 
F 0 "U8" H 4150 13265 50  0000 C CNN
F 1 "Meanwell-LDD-1200LW" H 4150 13174 50  0000 C CNN
F 2 "ariadne:Meanwell-LDD-1xxxL" H 3950 12900 50  0001 C CNN
F 3 "" H 3950 12900 50  0001 C CNN
	1    4150 12900
	1    0    0    -1  
$EndComp
Text GLabel 4600 12800 2    50   Input ~ 0
LDD_4-OUT+
Text GLabel 4600 13000 2    50   Input ~ 0
LDD_4-OUT-
Wire Notes Line
	1150 14500 5550 14500
Wire Notes Line
	5550 14500 5550 10550
Wire Notes Line
	5550 10550 1150 10550
Wire Notes Line
	1150 10550 1150 14500
Wire Wire Line
	3700 13100 3700 13000
Wire Wire Line
	3700 12800 3700 12700
Wire Wire Line
	4600 12800 4600 12700
Wire Wire Line
	4600 13100 4600 13000
$Comp
L ariadne-v3-rescue:Meanwell-LDD-1200LW-ariadne-ariadne-rescue U?
U 1 1 5FCE2FFC
P 8950 8500
AR Path="/5FBCFD95/5FCE2FFC" Ref="U?"  Part="1" 
AR Path="/5FCE2FFC" Ref="U18"  Part="1" 
AR Path="/6043A647/5FCE2FFC" Ref="U18"  Part="1" 
F 0 "U18" H 8950 8865 50  0000 C CNN
F 1 "Meanwell-LDD-1200LW" H 8950 8774 50  0000 C CNN
F 2 "ariadne:Meanwell-LDD-1xxxL" H 8750 8500 50  0001 C CNN
F 3 "" H 8750 8500 50  0001 C CNN
	1    8950 8500
	1    0    0    -1  
$EndComp
Text GLabel 9400 8400 2    50   Input ~ 0
LDD_2-OUT+
Text GLabel 9400 8600 2    50   Input ~ 0
LDD_2-OUT-
$Comp
L ariadne-rescue:Meanwell-LDD-1200LW-connector-ariadne U?
U 1 1 5FCE3004
P 7100 6750
AR Path="/5FBCFD95/5FCE3004" Ref="U?"  Part="1" 
AR Path="/5FCE3004" Ref="U14"  Part="1" 
AR Path="/6043A647/5FCE3004" Ref="U14"  Part="1" 
F 0 "U14" H 7478 6738 50  0000 L CNN
F 1 "Meanwell-LDD-1200LW-connector" H 7478 6647 50  0000 L CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0315_1x03_P3.00mm_Vertical" H 6900 6750 50  0001 C CNN
F 3 "" H 6900 6750 50  0001 C CNN
	1    7100 6750
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:Meanwell-LDD-1200LW-connector-ariadne U?
U 1 1 5FCE300A
P 6500 8500
AR Path="/5FBCFD95/5FCE300A" Ref="U?"  Part="1" 
AR Path="/5FCE300A" Ref="U12"  Part="1" 
AR Path="/6043A647/5FCE300A" Ref="U12"  Part="1" 
F 0 "U12" H 6442 8865 50  0000 C CNN
F 1 "Meanwell-LDD-1200LW-connector" H 6442 8774 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0315_1x03_P3.00mm_Vertical" H 6300 8500 50  0001 C CNN
F 3 "" H 6300 8500 50  0001 C CNN
	1    6500 8500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7100 7050 7100 7300
Wire Wire Line
	6500 8800 8050 8800
$Comp
L ariadne-rescue:Connector-LED-ariadne U?
U 1 1 5FCE3014
P 8300 9450
AR Path="/5FBCFD95/5FCE3014" Ref="U?"  Part="1" 
AR Path="/5FCE3014" Ref="U17"  Part="1" 
AR Path="/6043A647/5FCE3014" Ref="U17"  Part="1" 
F 0 "U17" H 8350 9615 50  0000 C CNN
F 1 "Connector-LED" H 8350 9524 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 8350 9433 50  0000 C CNN
F 3 "" H 8300 9450 50  0001 C CNN
	1    8300 9450
	1    0    0    -1  
$EndComp
Wire Notes Line
	5950 10100 10350 10100
Wire Notes Line
	10350 10100 10350 6150
Wire Notes Line
	10350 6150 5950 6150
Wire Notes Line
	5950 6150 5950 10100
Text GLabel 7100 7300 3    50   Input ~ 0
DIM-2
Wire Wire Line
	6950 8400 8500 8400
Wire Wire Line
	6950 8600 8500 8600
Wire Wire Line
	8050 8800 8050 8050
Wire Wire Line
	8050 8050 8950 8050
Wire Wire Line
	8500 8700 8500 8600
Connection ~ 8500 8600
Wire Wire Line
	8500 8400 8500 8300
Connection ~ 8500 8400
Wire Wire Line
	9400 8400 9400 8300
Wire Wire Line
	9400 8700 9400 8600
$Comp
L ariadne-v3-rescue:Meanwell-LDD-1200LW-ariadne-ariadne-rescue U?
U 1 1 5FCE5B4D
P 9000 12950
AR Path="/5FBCFD95/5FCE5B4D" Ref="U?"  Part="1" 
AR Path="/5FCE5B4D" Ref="U19"  Part="1" 
AR Path="/6043A647/5FCE5B4D" Ref="U19"  Part="1" 
F 0 "U19" H 9000 13315 50  0000 C CNN
F 1 "Meanwell-LDD-1200LW" H 9000 13224 50  0000 C CNN
F 2 "ariadne:Meanwell-LDD-1xxxL" H 8800 12950 50  0001 C CNN
F 3 "" H 8800 12950 50  0001 C CNN
	1    9000 12950
	1    0    0    -1  
$EndComp
Text GLabel 9450 12850 2    50   Input ~ 0
LDD_5-OUT+
Text GLabel 9450 13050 2    50   Input ~ 0
LDD_5-OUT-
Wire Notes Line
	6000 14550 10400 14550
Wire Notes Line
	10400 14550 10400 10600
Wire Notes Line
	10400 10600 6000 10600
Wire Notes Line
	6000 10600 6000 14550
Wire Wire Line
	8550 13150 8550 13050
Wire Wire Line
	8550 12850 8550 12750
Wire Wire Line
	9450 12850 9450 12750
Wire Wire Line
	9450 13150 9450 13050
$Comp
L ariadne-v3-rescue:Meanwell-LDD-1200LW-ariadne-ariadne-rescue U?
U 1 1 5FCE8DFF
P 13800 8500
AR Path="/5FBCFD95/5FCE8DFF" Ref="U?"  Part="1" 
AR Path="/5FCE8DFF" Ref="U27"  Part="1" 
AR Path="/6043A647/5FCE8DFF" Ref="U27"  Part="1" 
F 0 "U27" H 13800 8865 50  0000 C CNN
F 1 "Meanwell-LDD-1200LW" H 13800 8774 50  0000 C CNN
F 2 "ariadne:Meanwell-LDD-1xxxL" H 13600 8500 50  0001 C CNN
F 3 "" H 13600 8500 50  0001 C CNN
	1    13800 8500
	1    0    0    -1  
$EndComp
Text GLabel 14250 8400 2    50   Input ~ 0
LDD_3-OUT+
Text GLabel 14250 8600 2    50   Input ~ 0
LDD_3-OUT-
$Comp
L ariadne-rescue:Meanwell-LDD-1200LW-connector-ariadne U?
U 1 1 5FCE8E07
P 11950 6750
AR Path="/5FBCFD95/5FCE8E07" Ref="U?"  Part="1" 
AR Path="/5FCE8E07" Ref="U22"  Part="1" 
AR Path="/6043A647/5FCE8E07" Ref="U22"  Part="1" 
F 0 "U22" H 12328 6738 50  0000 L CNN
F 1 "Meanwell-LDD-1200LW-connector" H 12328 6647 50  0000 L CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0315_1x03_P3.00mm_Vertical" H 11750 6750 50  0001 C CNN
F 3 "" H 11750 6750 50  0001 C CNN
	1    11950 6750
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:Meanwell-LDD-1200LW-connector-ariadne U?
U 1 1 5FCE8E0D
P 11350 8500
AR Path="/5FBCFD95/5FCE8E0D" Ref="U?"  Part="1" 
AR Path="/5FCE8E0D" Ref="U20"  Part="1" 
AR Path="/6043A647/5FCE8E0D" Ref="U20"  Part="1" 
F 0 "U20" H 11292 8865 50  0000 C CNN
F 1 "Meanwell-LDD-1200LW-connector" H 11292 8774 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0315_1x03_P3.00mm_Vertical" H 11150 8500 50  0001 C CNN
F 3 "" H 11150 8500 50  0001 C CNN
	1    11350 8500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11950 7050 11950 7300
Wire Wire Line
	11350 8800 12900 8800
Wire Notes Line
	10800 10100 15200 10100
Wire Notes Line
	15200 10100 15200 6150
Wire Notes Line
	15200 6150 10800 6150
Wire Notes Line
	10800 6150 10800 10100
Text GLabel 11950 7300 3    50   Input ~ 0
DIM-3
Wire Wire Line
	11800 8400 13350 8400
Wire Wire Line
	11800 8600 13350 8600
Wire Wire Line
	12900 8800 12900 8050
Wire Wire Line
	12900 8050 13800 8050
Wire Wire Line
	13350 8700 13350 8600
Connection ~ 13350 8600
Wire Wire Line
	13350 8400 13350 8300
Connection ~ 13350 8400
Wire Wire Line
	14250 8400 14250 8300
Wire Wire Line
	14250 8700 14250 8600
$Comp
L ariadne-v3-rescue:Meanwell-LDD-1200LW-ariadne-ariadne-rescue U?
U 1 1 5FCEC44D
P 13800 13000
AR Path="/5FBCFD95/5FCEC44D" Ref="U?"  Part="1" 
AR Path="/5FCEC44D" Ref="U28"  Part="1" 
AR Path="/6043A647/5FCEC44D" Ref="U28"  Part="1" 
F 0 "U28" H 13800 13365 50  0000 C CNN
F 1 "Meanwell-LDD-1200LW" H 13800 13274 50  0000 C CNN
F 2 "ariadne:Meanwell-LDD-1xxxL" H 13600 13000 50  0001 C CNN
F 3 "" H 13600 13000 50  0001 C CNN
	1    13800 13000
	1    0    0    -1  
$EndComp
Text GLabel 14250 12900 2    50   Input ~ 0
LDD_6-OUT+
Text GLabel 14250 13100 2    50   Input ~ 0
LDD_6-OUT-
$Comp
L ariadne-rescue:Meanwell-LDD-1200LW-connector-ariadne U?
U 1 1 5FCEC455
P 11950 11250
AR Path="/5FBCFD95/5FCEC455" Ref="U?"  Part="1" 
AR Path="/5FCEC455" Ref="U23"  Part="1" 
AR Path="/6043A647/5FCEC455" Ref="U23"  Part="1" 
F 0 "U23" H 12328 11238 50  0000 L CNN
F 1 "Meanwell-LDD-1200LW-connector" H 12328 11147 50  0000 L CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0315_1x03_P3.00mm_Vertical" H 11750 11250 50  0001 C CNN
F 3 "" H 11750 11250 50  0001 C CNN
	1    11950 11250
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:Meanwell-LDD-1200LW-connector-ariadne U?
U 1 1 5FCEC45B
P 11350 13000
AR Path="/5FBCFD95/5FCEC45B" Ref="U?"  Part="1" 
AR Path="/5FCEC45B" Ref="U21"  Part="1" 
AR Path="/6043A647/5FCEC45B" Ref="U21"  Part="1" 
F 0 "U21" H 11292 13365 50  0000 C CNN
F 1 "Meanwell-LDD-1200LW-connector" H 11292 13274 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0315_1x03_P3.00mm_Vertical" H 11150 13000 50  0001 C CNN
F 3 "" H 11150 13000 50  0001 C CNN
	1    11350 13000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11950 11550 11950 11800
Wire Wire Line
	11350 13300 12900 13300
Wire Notes Line
	10800 14600 15200 14600
Wire Notes Line
	15200 14600 15200 10650
Wire Notes Line
	15200 10650 10800 10650
Wire Notes Line
	10800 10650 10800 14600
Text GLabel 11950 11800 3    50   Input ~ 0
DIM-6
Wire Wire Line
	11800 12900 13350 12900
Wire Wire Line
	11800 13100 13350 13100
Wire Wire Line
	12900 13300 12900 12550
Wire Wire Line
	12900 12550 13800 12550
Wire Wire Line
	13350 13200 13350 13100
Connection ~ 13350 13100
Wire Wire Line
	13350 12900 13350 12800
Connection ~ 13350 12900
Wire Wire Line
	14250 12900 14250 12800
Wire Wire Line
	14250 13200 14250 13100
$Comp
L ariadne-rescue:Connector-LED-ariadne U?
U 1 1 5FBEFB9E
P 3150 9550
AR Path="/5FBCFD95/5FBEFB9E" Ref="U?"  Part="1" 
AR Path="/5FBEFB9E" Ref="U6"  Part="1" 
AR Path="/6043A647/5FBEFB9E" Ref="U6"  Part="1" 
F 0 "U6" H 3200 9715 50  0000 C CNN
F 1 "Connector-LED" H 3200 9624 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 3200 9533 50  0000 C CNN
F 3 "" H 3150 9550 50  0001 C CNN
	1    3150 9550
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:Connector-LED-ariadne U?
U 1 1 5FC02D50
P 13200 9550
AR Path="/5FBCFD95/5FC02D50" Ref="U?"  Part="1" 
AR Path="/5FC02D50" Ref="U26"  Part="1" 
AR Path="/6043A647/5FC02D50" Ref="U26"  Part="1" 
F 0 "U26" H 13250 9715 50  0000 C CNN
F 1 "Connector-LED" H 13250 9624 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 13250 9533 50  0000 C CNN
F 3 "" H 13200 9550 50  0001 C CNN
	1    13200 9550
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:Connector-LED-ariadne U?
U 1 1 5FC061CF
P 13000 14100
AR Path="/5FBCFD95/5FC061CF" Ref="U?"  Part="1" 
AR Path="/5FC061CF" Ref="U25"  Part="1" 
AR Path="/6043A647/5FC061CF" Ref="U25"  Part="1" 
F 0 "U25" H 13050 14265 50  0000 C CNN
F 1 "Connector-LED" H 13050 14174 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 13050 14083 50  0000 C CNN
F 3 "" H 13000 14100 50  0001 C CNN
	1    13000 14100
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:Connector-LED-ariadne U?
U 1 1 5FC09726
P 8000 14050
AR Path="/5FBCFD95/5FC09726" Ref="U?"  Part="1" 
AR Path="/5FC09726" Ref="U16"  Part="1" 
AR Path="/6043A647/5FC09726" Ref="U16"  Part="1" 
F 0 "U16" H 8050 14215 50  0000 C CNN
F 1 "Connector-LED" H 8050 14124 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 8050 14033 50  0000 C CNN
F 3 "" H 8000 14050 50  0001 C CNN
	1    8000 14050
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:Connector-LED-ariadne U?
U 1 1 5FC0D13F
P 3200 14000
AR Path="/5FBCFD95/5FC0D13F" Ref="U?"  Part="1" 
AR Path="/5FC0D13F" Ref="U7"  Part="1" 
AR Path="/6043A647/5FC0D13F" Ref="U7"  Part="1" 
F 0 "U7" H 3250 14165 50  0000 C CNN
F 1 "Connector-LED" H 3250 14074 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 3250 13983 50  0000 C CNN
F 3 "" H 3200 14000 50  0001 C CNN
	1    3200 14000
	1    0    0    -1  
$EndComp
Text GLabel 3150 4700 3    50   Input ~ 0
VIN+Master2
Text GLabel 1650 4700 3    50   Input ~ 0
VIN-Master2
Text GLabel 1900 6650 0    50   Input ~ 0
VIN+Master1
Text GLabel 6650 6650 0    50   Input ~ 0
VIN+Master1
Text GLabel 11500 6650 0    50   Input ~ 0
VIN+Master1
Text GLabel 1900 6850 0    50   Input ~ 0
VIN-Master1
Text GLabel 6650 6850 0    50   Input ~ 0
VIN-Master1
Text GLabel 11500 6850 0    50   Input ~ 0
VIN-Master1
Text GLabel 11500 11350 0    50   Input ~ 0
VIN-Master2
Text GLabel 11500 11150 0    50   Input ~ 0
VIN+Master2
Text GLabel 3000 9700 0    50   Input ~ 0
LDD_1-OUT+
Text GLabel 3400 9700 2    50   Input ~ 0
LDD_1-OUT-
Text GLabel 8150 9600 0    50   Input ~ 0
LDD_2-OUT+
Text GLabel 8550 9600 2    50   Input ~ 0
LDD_2-OUT-
Text GLabel 13050 9700 0    50   Input ~ 0
LDD_3-OUT+
Text GLabel 13450 9700 2    50   Input ~ 0
LDD_3-OUT-
Text GLabel 3050 14150 0    50   Input ~ 0
LDD_4-OUT+
Text GLabel 3450 14150 2    50   Input ~ 0
LDD_4-OUT-
Text GLabel 7850 14200 0    50   Input ~ 0
LDD_5-OUT+
Text GLabel 8250 14200 2    50   Input ~ 0
LDD_5-OUT-
Text GLabel 12850 14250 0    50   Input ~ 0
LDD_6-OUT+
Text GLabel 13250 14250 2    50   Input ~ 0
LDD_6-OUT-
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 5FC44B22
P 11350 1900
AR Path="/5FBCFD95/5FC44B22" Ref="J?"  Part="1" 
AR Path="/5FC44B22" Ref="J2"  Part="1" 
AR Path="/6043A647/5FC44B22" Ref="J2"  Part="1" 
F 0 "J2" H 11458 2281 50  0000 C CNN
F 1 "Conn_01x05_Male" H 11458 2190 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 11350 1900 50  0001 C CNN
F 3 "~" H 11350 1900 50  0001 C CNN
	1    11350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	11550 1700 11800 1700
Wire Wire Line
	11550 1800 11800 1800
Wire Wire Line
	11550 1900 11800 1900
Wire Wire Line
	11550 2000 11800 2000
Wire Wire Line
	11550 2100 11800 2100
$Comp
L power:+36V #PWR04
U 1 1 5FC61317
P 5550 3700
F 0 "#PWR04" H 5550 3550 50  0001 C CNN
F 1 "+36V" H 5565 3873 50  0000 C CNN
F 2 "" H 5550 3700 50  0001 C CNN
F 3 "" H 5550 3700 50  0001 C CNN
	1    5550 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+36V #PWR03
U 1 1 5FC61748
P 5550 1950
F 0 "#PWR03" H 5550 1800 50  0001 C CNN
F 1 "+36V" H 5565 2123 50  0000 C CNN
F 2 "" H 5550 1950 50  0001 C CNN
F 3 "" H 5550 1950 50  0001 C CNN
	1    5550 1950
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:Noctua-NF-A4x10-Simple-Fan-ariadne U33
U 1 1 5FCBEFDA
P 15650 4400
F 0 "U33" H 16078 4479 50  0000 L CNN
F 1 "Noctua-NF-A4x10-Simple-Fan-ariadne" H 16078 4388 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 14500 4750 50  0001 C CNN
F 3 "" H 14500 4750 50  0001 C CNN
	1    15650 4400
	1    0    0    -1  
$EndComp
Text GLabel 3700 13000 0    50   Input ~ 0
VIN-Master2
Text GLabel 3700 12800 0    50   Input ~ 0
VIN+Master2
Text GLabel 4150 12450 1    50   Input ~ 0
DIM-4
Text GLabel 9000 12500 1    50   Input ~ 0
DIM-5
Text GLabel 8550 13050 0    50   Input ~ 0
VIN-Master2
Text GLabel 8550 12750 0    50   Input ~ 0
VIN+Master2
Text GLabel 8550 12850 0    50   Input ~ 0
VIN+Master2
Text GLabel 8550 13150 0    50   Input ~ 0
VIN-Master2
Text GLabel 9450 13150 2    50   Input ~ 0
LDD_5-OUT-
Text GLabel 9450 12750 2    50   Input ~ 0
LDD_5-OUT+
Text GLabel 14250 13200 2    50   Input ~ 0
LDD_6-OUT-
Text GLabel 14250 12800 2    50   Input ~ 0
LDD_6-OUT+
Text GLabel 4600 13100 2    50   Input ~ 0
LDD_4-OUT-
Text GLabel 4600 12700 2    50   Input ~ 0
LDD_4-OUT+
Text GLabel 3700 12700 0    50   Input ~ 0
VIN+Master2
Text GLabel 3700 13100 0    50   Input ~ 0
VIN-Master2
Text GLabel 4650 8300 2    50   Input ~ 0
LDD_1-OUT+
Text GLabel 4650 8700 2    50   Input ~ 0
LDD_1-OUT-
Text GLabel 9400 8300 2    50   Input ~ 0
LDD_2-OUT+
Text GLabel 9400 8700 2    50   Input ~ 0
LDD_2-OUT-
Text GLabel 14250 8300 2    50   Input ~ 0
LDD_3-OUT+
Text GLabel 14250 8700 2    50   Input ~ 0
LDD_3-OUT-
$Comp
L ariadne-rescue:Noctua-NF-A4x10-Simple-Fan-ariadne U4
U 1 1 5FE084EC
P 15650 5150
F 0 "U4" H 16078 5229 50  0000 L CNN
F 1 "Noctua-NF-A4x10-Simple-Fan-ariadne" H 16078 5138 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 14500 5500 50  0001 C CNN
F 3 "" H 14500 5500 50  0001 C CNN
	1    15650 5150
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:Noctua-NF-A4x10-Simple-Fan-ariadne U1
U 1 1 5FE0B779
P 15650 3600
F 0 "U1" H 16078 3679 50  0000 L CNN
F 1 "Noctua-NF-A4x10-Simple-Fan-ariadne" H 16078 3588 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 14500 3950 50  0001 C CNN
F 3 "" H 14500 3950 50  0001 C CNN
	1    15650 3600
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:Noctua-NF-A4x10-Simple-Fan-ariadne U44
U 1 1 5FE123D0
P 18100 4400
F 0 "U44" H 18528 4479 50  0000 L CNN
F 1 "Noctua-NF-A4x10-Simple-Fan-ariadne" H 18528 4388 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 16950 4750 50  0001 C CNN
F 3 "" H 16950 4750 50  0001 C CNN
	1    18100 4400
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:Noctua-NF-A4x10-Simple-Fan-ariadne U43
U 1 1 5FE15625
P 18100 3550
F 0 "U43" H 18528 3629 50  0000 L CNN
F 1 "Noctua-NF-A4x10-Simple-Fan-ariadne" H 18528 3538 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 16950 3900 50  0001 C CNN
F 3 "" H 16950 3900 50  0001 C CNN
	1    18100 3550
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:Noctua-NF-A4x10-Simple-Fan-ariadne U34
U 1 1 5FCBF3F6
P 18100 5250
F 0 "U34" H 18528 5329 50  0000 L CNN
F 1 "Noctua-NF-A4x10-Simple-Fan-ariadne" H 18528 5238 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 16950 5600 50  0001 C CNN
F 3 "" H 16950 5600 50  0001 C CNN
	1    18100 5250
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:12v-Connector U13
U 1 1 5FE3BAD0
P 16450 6700
F 0 "U13" H 16728 6904 50  0000 L CNN
F 1 "12v-Connector" H 16728 6813 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 16450 6700 50  0001 C CNN
F 3 "" H 16450 6700 50  0001 C CNN
	1    16450 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5FE42CC4
P 16250 6300
AR Path="/5FBCFD95/5FE42CC4" Ref="#PWR?"  Part="1" 
AR Path="/5FE42CC4" Ref="#PWR020"  Part="1" 
AR Path="/6043A647/5FE42CC4" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 16250 6150 50  0001 C CNN
F 1 "+12V" H 16265 6473 50  0000 C CNN
F 2 "" H 16250 6300 50  0001 C CNN
F 3 "" H 16250 6300 50  0001 C CNN
	1    16250 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE44A5A
P 16550 6300
AR Path="/5FBCFD95/5FE44A5A" Ref="#PWR?"  Part="1" 
AR Path="/5FE44A5A" Ref="#PWR022"  Part="1" 
AR Path="/6043A647/5FE44A5A" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 16550 6050 50  0001 C CNN
F 1 "GND" H 16555 6127 50  0000 C CNN
F 2 "" H 16550 6300 50  0001 C CNN
F 3 "" H 16550 6300 50  0001 C CNN
	1    16550 6300
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG07
U 1 1 5FE46757
P 18050 6100
F 0 "#FLG07" H 18050 6175 50  0001 C CNN
F 1 "PWR_FLAG" H 18050 6273 50  0000 C CNN
F 2 "" H 18050 6100 50  0001 C CNN
F 3 "~" H 18050 6100 50  0001 C CNN
	1    18050 6100
	0    -1   -1   0   
$EndComp
$Comp
L ariadne-rescue:12v-Connector_copy U47
U 1 1 5FE470D2
P 18250 6500
F 0 "U47" H 18528 6704 50  0000 L CNN
F 1 "12v-Connector_copy" H 18528 6613 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 18250 6500 50  0001 C CNN
F 3 "" H 18250 6500 50  0001 C CNN
	1    18250 6500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG09
U 1 1 5FE47330
P 18350 6100
F 0 "#FLG09" H 18350 6175 50  0001 C CNN
F 1 "PWR_FLAG" H 18350 6273 50  0000 C CNN
F 2 "" H 18350 6100 50  0001 C CNN
F 3 "~" H 18350 6100 50  0001 C CNN
	1    18350 6100
	0    1    1    0   
$EndComp
$Comp
L ariadne-rescue:12v-Connector U15
U 1 1 5FE4976E
P 16450 7550
F 0 "U15" H 16728 7754 50  0000 L CNN
F 1 "12v-Connector" H 16728 7663 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 16450 7550 50  0001 C CNN
F 3 "" H 16450 7550 50  0001 C CNN
	1    16450 7550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5FE49C34
P 16250 7150
AR Path="/5FBCFD95/5FE49C34" Ref="#PWR?"  Part="1" 
AR Path="/5FE49C34" Ref="#PWR021"  Part="1" 
AR Path="/6043A647/5FE49C34" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 16250 7000 50  0001 C CNN
F 1 "+12V" H 16265 7323 50  0000 C CNN
F 2 "" H 16250 7150 50  0001 C CNN
F 3 "" H 16250 7150 50  0001 C CNN
	1    16250 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE4A733
P 16550 7150
AR Path="/5FBCFD95/5FE4A733" Ref="#PWR?"  Part="1" 
AR Path="/5FE4A733" Ref="#PWR023"  Part="1" 
AR Path="/6043A647/5FE4A733" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 16550 6900 50  0001 C CNN
F 1 "GND" H 16555 6977 50  0000 C CNN
F 2 "" H 16550 7150 50  0001 C CNN
F 3 "" H 16550 7150 50  0001 C CNN
	1    16550 7150
	-1   0    0    1   
$EndComp
$Comp
L ariadne-rescue:12v-Connector_copy U45
U 1 1 5FE57AB6
P 18150 7550
F 0 "U45" H 18428 7754 50  0000 L CNN
F 1 "12v-Connector_copy" H 18428 7663 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 18150 7550 50  0001 C CNN
F 3 "" H 18150 7550 50  0001 C CNN
	1    18150 7550
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG06
U 1 1 5FE58340
P 17950 7150
F 0 "#FLG06" H 17950 7225 50  0001 C CNN
F 1 "PWR_FLAG" H 17950 7323 50  0000 C CNN
F 2 "" H 17950 7150 50  0001 C CNN
F 3 "~" H 17950 7150 50  0001 C CNN
	1    17950 7150
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG08
U 1 1 5FE58B20
P 18250 7150
F 0 "#FLG08" H 18250 7225 50  0001 C CNN
F 1 "PWR_FLAG" H 18250 7323 50  0000 C CNN
F 2 "" H 18250 7150 50  0001 C CNN
F 3 "~" H 18250 7150 50  0001 C CNN
	1    18250 7150
	0    1    1    0   
$EndComp
Text GLabel 18050 6100 1    50   Output ~ 0
FAN1+
Text GLabel 18350 6100 1    50   Output ~ 0
FAN1-
Text GLabel 17950 7150 1    50   Output ~ 0
FAN2+
Text GLabel 18250 7150 1    50   Output ~ 0
FAN2-
Text GLabel 17800 4100 1    50   Input ~ 0
FAN1-
Text GLabel 17800 3250 1    50   Input ~ 0
FAN1-
Text GLabel 18000 4100 1    50   Input ~ 0
FAN1+
Text GLabel 18000 3250 1    50   Input ~ 0
FAN1+
Text GLabel 15550 3300 1    50   Input ~ 0
FAN2+
Text GLabel 15550 4850 1    50   Input ~ 0
FAN2+
Text GLabel 15350 4850 1    50   Input ~ 0
FAN2-
Text GLabel 15350 3300 1    50   Input ~ 0
FAN2-
$Comp
L power:GND #PWR?
U 1 1 5FE98C15
P 17800 4950
AR Path="/5FBCFD95/5FE98C15" Ref="#PWR?"  Part="1" 
AR Path="/5FE98C15" Ref="#PWR026"  Part="1" 
AR Path="/6043A647/5FE98C15" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 17800 4700 50  0001 C CNN
F 1 "GND" H 17805 4777 50  0000 C CNN
F 2 "" H 17800 4950 50  0001 C CNN
F 3 "" H 17800 4950 50  0001 C CNN
	1    17800 4950
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5FE98F86
P 18000 4950
AR Path="/5FBCFD95/5FE98F86" Ref="#PWR?"  Part="1" 
AR Path="/5FE98F86" Ref="#PWR027"  Part="1" 
AR Path="/6043A647/5FE98F86" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 18000 4800 50  0001 C CNN
F 1 "+12V" H 18015 5123 50  0000 C CNN
F 2 "" H 18000 4950 50  0001 C CNN
F 3 "" H 18000 4950 50  0001 C CNN
	1    18000 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE9A02C
P 15350 4100
AR Path="/5FBCFD95/5FE9A02C" Ref="#PWR?"  Part="1" 
AR Path="/5FE9A02C" Ref="#PWR024"  Part="1" 
AR Path="/6043A647/5FE9A02C" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 15350 3850 50  0001 C CNN
F 1 "GND" H 15355 3927 50  0000 C CNN
F 2 "" H 15350 4100 50  0001 C CNN
F 3 "" H 15350 4100 50  0001 C CNN
	1    15350 4100
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5FE9A4F4
P 15550 4100
AR Path="/5FBCFD95/5FE9A4F4" Ref="#PWR?"  Part="1" 
AR Path="/5FE9A4F4" Ref="#PWR025"  Part="1" 
AR Path="/6043A647/5FE9A4F4" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 15550 3950 50  0001 C CNN
F 1 "+12V" H 15565 4273 50  0000 C CNN
F 2 "" H 15550 4100 50  0001 C CNN
F 3 "" H 15550 4100 50  0001 C CNN
	1    15550 4100
	1    0    0    -1  
$EndComp
$Comp
L ariadne-rescue:Noctua-NF-A4x10-Fan-mech-ariadne U29
U 1 1 5FD41056
P 20350 2350
F 0 "U29" H 20778 2313 50  0000 L CNN
F 1 "Noctua-NF-A4x10-Fan-mech-ariadne" H 20778 2222 50  0000 L CNN
F 2 "ariadne:Noctua-NF-A4x10" H 19200 2700 50  0001 C CNN
F 3 "" H 19200 2700 50  0001 C CNN
	1    20350 2350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
