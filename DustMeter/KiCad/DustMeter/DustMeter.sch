EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2950 2600 2    50   Input ~ 0
SDA
Text GLabel 2950 2700 2    50   Input ~ 0
SCL
$Comp
L power:+5V #PWR?
U 1 1 61F4081B
P 1750 1000
F 0 "#PWR?" H 1750 850 50  0001 C CNN
F 1 "+5V" H 1765 1173 50  0000 C CNN
F 2 "" H 1750 1000 50  0001 C CNN
F 3 "" H 1750 1000 50  0001 C CNN
	1    1750 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1000 1750 1300
Connection ~ 1750 1000
Text GLabel 2950 3200 2    50   Input ~ 0
DSM501A_Vout1
Text GLabel 2950 3400 2    50   Input ~ 0
DSM501A_Vout2
$Comp
L Device:Q_NPN_EBC Q1
U 1 1 61F46BA0
P 3700 3700
F 0 "Q1" H 3890 3746 50  0000 L CNN
F 1 "MPS2222A" H 3890 3655 50  0000 L CNN
F 2 "" H 3900 3800 50  0001 C CNN
F 3 "~" H 3700 3700 50  0001 C CNN
	1    3700 3700
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan M1
U 1 1 61F47898
P 3800 3300
F 0 "M1" H 3958 3396 50  0000 L CNN
F 1 "Fan" H 3958 3305 50  0000 L CNN
F 2 "" H 3800 3310 50  0001 C CNN
F 3 "~" H 3800 3310 50  0001 C CNN
	1    3800 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61F48634
P 3350 3700
F 0 "R1" V 3143 3700 50  0000 C CNN
F 1 "220" V 3234 3700 50  0000 C CNN
F 2 "" V 3280 3700 50  0001 C CNN
F 3 "~" H 3350 3700 50  0001 C CNN
	1    3350 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 3700 3200 3700
Wire Wire Line
	2350 4000 3800 4000
Wire Wire Line
	3800 4000 3800 3900
Connection ~ 2350 1000
Wire Wire Line
	2450 1000 2350 1000
Wire Wire Line
	2350 1000 1750 1000
$Comp
L power:GND #PWR?
U 1 1 61F40D68
P 3800 4000
F 0 "#PWR?" H 3800 3750 50  0001 C CNN
F 1 "GND" H 3805 3827 50  0000 C CNN
F 2 "" H 3800 4000 50  0001 C CNN
F 3 "" H 3800 4000 50  0001 C CNN
	1    3800 4000
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 61F3D675
P 2350 2500
F 0 "U1" H 2350 911 50  0000 C CNN
F 1 "ATmega328P-AU" H 2350 820 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2350 2500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2350 2500 50  0001 C CNN
	1    2350 2500
	1    0    0    -1  
$EndComp
Connection ~ 3800 4000
Text GLabel 3800 3000 1    50   Input ~ 0
Vraw
$Comp
L Device:D D1
U 1 1 61F4D85C
P 4200 3150
F 0 "D1" V 4154 3230 50  0000 L CNN
F 1 "1N4001" V 4245 3230 50  0000 L CNN
F 2 "" H 4200 3150 50  0001 C CNN
F 3 "~" H 4200 3150 50  0001 C CNN
	1    4200 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 3500 4200 3500
Connection ~ 3800 3500
Wire Wire Line
	3800 3000 4200 3000
Wire Wire Line
	4200 3300 4200 3500
$EndSCHEMATC
