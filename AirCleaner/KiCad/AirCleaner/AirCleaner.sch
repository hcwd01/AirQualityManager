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
$Comp
L Converter_DCDC:DSN600AUD_XL6009 U1
U 1 1 61E50053
P 1800 700
F 0 "U1" H 1800 825 50  0000 C CNN
F 1 "DSN600AUD_XL6009" H 1800 734 50  0000 C CNN
F 2 "" H 1800 400 50  0001 C CNN
F 3 "" H 1800 400 50  0001 C CNN
	1    1800 700 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61E508CD
P 600 800
F 0 "#PWR?" H 600 650 50  0001 C CNN
F 1 "+5V" H 615 973 50  0000 C CNN
F 2 "" H 600 800 50  0001 C CNN
F 3 "" H 600 800 50  0001 C CNN
	1    600  800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61E5128F
P 600 950
F 0 "#PWR?" H 600 700 50  0001 C CNN
F 1 "GND" H 605 777 50  0000 C CNN
F 2 "" H 600 950 50  0001 C CNN
F 3 "" H 600 950 50  0001 C CNN
	1    600  950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61E52036
P 2350 900
F 0 "#PWR?" H 2350 650 50  0001 C CNN
F 1 "GND" H 2355 727 50  0000 C CNN
F 2 "" H 2350 900 50  0001 C CNN
F 3 "" H 2350 900 50  0001 C CNN
	1    2350 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 61E52603
P 2350 800
F 0 "#PWR?" H 2350 650 50  0001 C CNN
F 1 "+12V" H 2365 973 50  0000 C CNN
F 2 "" H 2350 800 50  0001 C CNN
F 3 "" H 2350 800 50  0001 C CNN
	1    2350 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 800  2350 800 
Wire Wire Line
	2350 900  2200 900 
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U2
U 1 1 61E5682B
P 1950 2750
F 0 "U2" H 1950 1161 50  0000 C CNN
F 1 "ATmega328P-AU" H 1950 1070 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 1950 2750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 1950 2750 50  0001 C CNN
	1    1950 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1250 1350 1550
Wire Wire Line
	1350 1250 1950 1250
Wire Wire Line
	1200 900  1300 900 
Wire Wire Line
	1200 800  1350 800 
Wire Wire Line
	1350 1250 1350 800 
Connection ~ 1350 1250
Wire Wire Line
	1350 800  1400 800 
Connection ~ 1350 800 
Wire Wire Line
	1400 900  1300 900 
Connection ~ 1300 900 
Wire Wire Line
	2050 1250 1950 1250
Connection ~ 1950 1250
Wire Wire Line
	1950 4250 1300 4250
Wire Wire Line
	1300 900  1300 4250
$Comp
L Device:R_POT RV1
U 1 1 61E612A6
P 3050 2450
F 0 "RV1" H 2980 2496 50  0000 R CNN
F 1 "500k" H 2980 2405 50  0000 R CNN
F 2 "" H 3050 2450 50  0001 C CNN
F 3 "~" H 3050 2450 50  0001 C CNN
	1    3050 2450
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61E63096
P 3050 2300
F 0 "#PWR?" H 3050 2150 50  0001 C CNN
F 1 "+5V" H 3065 2473 50  0000 C CNN
F 2 "" H 3050 2300 50  0001 C CNN
F 3 "" H 3050 2300 50  0001 C CNN
	1    3050 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61E63AD8
P 3050 2600
F 0 "#PWR?" H 3050 2350 50  0001 C CNN
F 1 "GND" H 3055 2427 50  0000 C CNN
F 2 "" H 3050 2600 50  0001 C CNN
F 3 "" H 3050 2600 50  0001 C CNN
	1    3050 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2450 2550 2450
$Comp
L Motor:Fan M1
U 1 1 61E64875
P 3350 1100
F 0 "M1" H 3508 1196 50  0000 L CNN
F 1 "Fan" H 3508 1105 50  0000 L CNN
F 2 "" H 3350 1110 50  0001 C CNN
F 3 "~" H 3350 1110 50  0001 C CNN
	1    3350 1100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q1
U 1 1 61E66B13
P 3250 1650
F 0 "Q1" H 3454 1696 50  0000 L CNN
F 1 "IRFZ44N" H 3454 1605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3500 1575 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 3250 1650 50  0001 L CNN
	1    3250 1650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 61E6C75B
P 900 800
F 0 "SW1" H 900 1067 50  0000 C CNN
F 1 "KCD1" H 900 976 50  0000 C CNN
F 2 "" H 900 800 50  0001 C CNN
F 3 "~" H 900 800 50  0001 C CNN
	1    900  800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 900  1200 950 
Wire Wire Line
	600  950  1200 950 
$Comp
L Diode:1N4007 D1
U 1 1 61E65460
P 2800 950
F 0 "D1" V 2754 1030 50  0000 L CNN
F 1 "1N4007" V 2845 1030 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2800 775 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2800 950 50  0001 C CNN
	1    2800 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 800  2800 800 
Connection ~ 2350 800 
Connection ~ 2800 800 
Wire Wire Line
	2800 800  3350 800 
Wire Wire Line
	3350 1300 2800 1300
Wire Wire Line
	2800 1300 2800 1100
$Comp
L power:GND #PWR?
U 1 1 61E797B6
P 3350 1950
F 0 "#PWR?" H 3350 1700 50  0001 C CNN
F 1 "GND" H 3355 1777 50  0000 C CNN
F 2 "" H 3350 1950 50  0001 C CNN
F 3 "" H 3350 1950 50  0001 C CNN
	1    3350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1650 3050 1650
Wire Wire Line
	3350 1300 3350 1450
Connection ~ 3350 1300
Wire Wire Line
	3350 1850 3350 1950
$EndSCHEMATC
