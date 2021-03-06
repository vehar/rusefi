EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:logo
LIBS:logo_flipped
LIBS:tc4427
LIBS:hi-lo-cache
EELAYER 27 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 1
Title "High or Low side driver board for RUSEFI.com"
Date "9 mar 2014"
Rev "A-.02"
Comp "RUSEFI.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 9050 6950 2    60   ~ 0
HL6
Text Label 9050 6850 2    60   ~ 0
HL5
Text Label 9050 6750 2    60   ~ 0
HL4
Text Label 9050 6650 2    60   ~ 0
HL3
Wire Wire Line
	8550 6750 9250 6750
Wire Wire Line
	8550 6650 9250 6650
Text Label 9050 6450 2    60   ~ 0
HL1
Text Label 9050 6550 2    60   ~ 0
HL2
$Comp
L C C603
U 1 1 524F7FBD
P 7450 7550
F 0 "C603" V 7500 7600 40  0000 L CNN
F 1 "0.1uF" V 7500 7300 40  0000 L CNN
F 2 "SM0805" H 7488 7400 30  0001 C CNN
F 3 "~" H 7450 7550 60  0000 C CNN
F 4 "AVX,08051C104KAT2A" V 7450 7550 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" V 7450 7550 60  0001 C CNN "SEEED,#"
F 6 "DIGI,478-5028-1-ND" V 7450 7550 60  0001 C CNN "VEND1,VEND1#"
	1    7450 7550
	0    1    -1   0   
$EndComp
$Comp
L CONN_6 P603
U 1 1 52967E40
P 9600 6700
F 0 "P603" V 9550 6700 60  0000 C CNN
F 1 "CONN_6" V 9650 6700 60  0000 C CNN
F 2 "OSTVN06A150" H 9600 6700 60  0001 C CNN
F 3 "" H 9600 6700 60  0000 C CNN
F 4 "ON SHORE,OSTVN06A150" V 9600 6700 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" V 9600 6700 60  0001 C CNN "SEEED,#"
F 6 "DIGI,ED10565-ND" V 9600 6700 60  0001 C CNN "VEND1,VEND1#"
	1    9600 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 6550 9250 6550
Wire Wire Line
	8750 6450 9250 6450
$Comp
L LOGO G601
U 1 1 529C04C3
P 16300 650
F 0 "G601" H 16350 700 60  0001 C CNN
F 1 "LOGO" H 16300 650 60  0001 C CNN
F 2 "LOGO_F" H 16300 650 60  0001 C CNN
F 3 "" H 16300 650 60  0001 C CNN
	1    16300 650 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 52E5BE5C
P 8450 7700
F 0 "#PWR01" H 8450 7700 30  0001 C CNN
F 1 "GND" H 8450 7630 30  0001 C CNN
F 2 "" H 8450 7700 60  0000 C CNN
F 3 "" H 8450 7700 60  0000 C CNN
	1    8450 7700
	1    0    0    -1  
$EndComp
NoConn ~ 6300 7350
NoConn ~ 7000 7350
Wire Wire Line
	7000 7550 7250 7550
Wire Wire Line
	7000 7450 7550 7450
$Comp
L LED LD606
U 1 1 52E5BF3C
P 8250 7650
F 0 "LD606" H 8100 7550 50  0000 C CNN
F 1 "LED" H 8250 7550 50  0000 C CNN
F 2 "LED-0805" H 8250 7650 60  0001 C CNN
F 3 "" H 8250 7650 60  0000 C CNN
F 4 "LITE-ON,LTST-C170TBKT" H 8250 7650 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" H 8250 7650 60  0001 C CNN "SEEED,#"
F 6 "DIGI,160-1579-1-ND" H 8250 7650 60  0001 C CNN "VEND1,VEND1#"
	1    8250 7650
	1    0    0    -1  
$EndComp
$Comp
L R R611
U 1 1 52E5BF4C
P 7800 7650
F 0 "R611" V 7880 7650 40  0000 C CNN
F 1 "2700" V 7807 7651 40  0000 C CNN
F 2 "SM0805" V 7730 7650 30  0001 C CNN
F 3 "" H 7800 7650 30  0000 C CNN
F 4 "PANASONIC,ERJ-6ENF2701V" V 7800 7650 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" V 7800 7650 60  0001 C CNN "SEEED,#"
F 6 "DIGI,P2.70KCCT-ND" V 7800 7650 60  0001 C CNN "VEND1,VEND1#"
	1    7800 7650
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 7650 7550 7650
$Comp
L R R612
U 1 1 52E5BFE6
P 7800 7850
F 0 "R612" V 7880 7850 40  0000 C CNN
F 1 "100" V 7807 7851 40  0000 C CNN
F 2 "SM0805" V 7730 7850 30  0001 C CNN
F 3 "" H 7800 7850 30  0000 C CNN
F 4 "PANASONIC,ERJ-6ENF1000V" V 7800 7850 60  0001 C CNN "MFG,MFG#"
F 5 "seeed,NA" V 7800 7850 60  0001 C CNN "seeed,#"
F 6 "digi,P100CTR-ND" V 7800 7850 60  0001 C CNN "vend1,vend1#"
	1    7800 7850
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 7650 7550 7850
Wire Wire Line
	7550 7450 7550 7250
Wire Wire Line
	8450 7450 8450 7700
Connection ~ 8450 7650
$Comp
L GND #PWR02
U 1 1 52E5C23D
P 6300 7550
F 0 "#PWR02" H 6300 7550 30  0001 C CNN
F 1 "GND" H 6300 7480 30  0001 C CNN
F 2 "" H 6300 7550 60  0000 C CNN
F 3 "" H 6300 7550 60  0000 C CNN
	1    6300 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 7550 8450 7550
Connection ~ 8450 7550
$Comp
L GND #PWR03
U 1 1 52E5C2F1
P 8450 6800
F 0 "#PWR03" H 8450 6800 30  0001 C CNN
F 1 "GND" H 8450 6730 30  0001 C CNN
F 2 "" H 8450 6800 60  0000 C CNN
F 3 "" H 8450 6800 60  0000 C CNN
	1    8450 6800
	1    0    0    -1  
$EndComp
NoConn ~ 6300 6450
NoConn ~ 7000 6450
Wire Wire Line
	7000 6650 7250 6650
Wire Wire Line
	7000 6550 7550 6550
Wire Wire Line
	7000 6750 7550 6750
Wire Wire Line
	7550 6750 7550 6950
Wire Wire Line
	7550 6550 7550 6350
Wire Wire Line
	8450 6550 8450 6800
Connection ~ 8450 6750
$Comp
L GND #PWR04
U 1 1 52E5C31B
P 6300 6650
F 0 "#PWR04" H 6300 6650 30  0001 C CNN
F 1 "GND" H 6300 6580 30  0001 C CNN
F 2 "" H 6300 6650 60  0000 C CNN
F 3 "" H 6300 6650 60  0000 C CNN
	1    6300 6650
	1    0    0    -1  
$EndComp
Connection ~ 8450 6650
$Comp
L GND #PWR05
U 1 1 52E5C33E
P 8450 5900
F 0 "#PWR05" H 8450 5900 30  0001 C CNN
F 1 "GND" H 8450 5830 30  0001 C CNN
F 2 "" H 8450 5900 60  0000 C CNN
F 3 "" H 8450 5900 60  0000 C CNN
	1    8450 5900
	1    0    0    -1  
$EndComp
NoConn ~ 6300 5550
NoConn ~ 7000 5550
Wire Wire Line
	7000 5750 7250 5750
Wire Wire Line
	7000 5650 7550 5650
Wire Wire Line
	7000 5850 7550 5850
Wire Wire Line
	7550 5850 7550 6050
Wire Wire Line
	7550 5650 7550 5450
Wire Wire Line
	8450 5650 8450 5900
Connection ~ 8450 5850
$Comp
L GND #PWR06
U 1 1 52E5C368
P 6300 5750
F 0 "#PWR06" H 6300 5750 30  0001 C CNN
F 1 "GND" H 6300 5680 30  0001 C CNN
F 2 "" H 6300 5750 60  0000 C CNN
F 3 "" H 6300 5750 60  0000 C CNN
	1    6300 5750
	1    0    0    -1  
$EndComp
Connection ~ 8450 5750
Wire Wire Line
	8050 7850 8750 7850
Wire Wire Line
	8050 6350 8550 6350
Wire Wire Line
	8550 6350 8550 6650
Wire Wire Line
	8050 6050 8650 6050
Wire Wire Line
	8650 6050 8650 6550
Wire Wire Line
	8050 5450 8750 5450
Wire Wire Line
	8750 5450 8750 6450
Wire Wire Line
	8550 6750 8550 6950
Wire Wire Line
	8550 6950 8050 6950
Wire Wire Line
	9250 6850 8650 6850
Wire Wire Line
	8650 6850 8650 7250
Wire Wire Line
	8650 7250 8050 7250
Connection ~ 7100 7550
Connection ~ 7100 6650
Connection ~ 7100 5750
Wire Wire Line
	7100 5250 7100 7550
Wire Wire Line
	9250 6950 8750 6950
Wire Wire Line
	8750 6950 8750 7850
$Comp
L CONN_3X2 P601
U 1 1 52E6349C
P 5350 6700
F 0 "P601" H 5350 6950 50  0000 C CNN
F 1 "CONN_3X2" V 5350 6750 40  0000 C CNN
F 2 "pin_array_3x2" H 5350 6700 60  0001 C CNN
F 3 "" H 5350 6700 60  0000 C CNN
F 4 "te,215309-3" H 5350 6700 60  0001 C CNN "mfg,mfg#"
F 5 "seeed,NA" H 5350 6700 60  0001 C CNN "seeed,#"
F 6 "digi,A106661-ND" H 5350 6700 60  0001 C CNN "vend1,vend1#"
	1    5350 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 52E634B3
P 7500 5250
F 0 "#PWR07" H 7500 5250 30  0001 C CNN
F 1 "GND" H 7500 5180 30  0001 C CNN
F 2 "" H 7500 5250 60  0000 C CNN
F 3 "" H 7500 5250 60  0000 C CNN
	1    7500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 6750 5800 6750
Wire Wire Line
	5800 6750 5800 7450
Wire Wire Line
	5800 7450 6300 7450
Wire Wire Line
	6300 7650 4950 7650
Wire Wire Line
	4950 7650 4950 6750
$Comp
L R R610
U 1 1 52E63CB5
P 7800 7450
F 0 "R610" V 7880 7450 40  0000 C CNN
F 1 "2700" V 7807 7451 40  0000 C CNN
F 2 "SM0805" V 7730 7450 30  0001 C CNN
F 3 "" H 7800 7450 30  0000 C CNN
F 4 "PANASONIC,ERJ-6ENF2701V" V 7800 7450 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" V 7800 7450 60  0001 C CNN "SEEED,#"
F 6 "DIGI,P2.70KCCT-ND" V 7800 7450 60  0001 C CNN "VEND1,VEND1#"
	1    7800 7450
	0    1    -1   0   
$EndComp
$Comp
L R R609
U 1 1 52E63CBE
P 7800 7250
F 0 "R609" V 7880 7250 40  0000 C CNN
F 1 "100" V 7807 7251 40  0000 C CNN
F 2 "SM0805" V 7730 7250 30  0001 C CNN
F 3 "" H 7800 7250 30  0000 C CNN
F 4 "PANASONIC,ERJ-6ENF1000V" V 7800 7250 60  0001 C CNN "MFG,MFG#"
F 5 "seeed,NA" V 7800 7250 60  0001 C CNN "seeed,#"
F 6 "digi,P100CTR-ND" V 7800 7250 60  0001 C CNN "vend1,vend1#"
	1    7800 7250
	0    1    -1   0   
$EndComp
$Comp
L LED LD605
U 1 1 52E63CC7
P 8250 7450
F 0 "LD605" H 8100 7350 50  0000 C CNN
F 1 "LED" H 8250 7350 50  0000 C CNN
F 2 "LED-0805" H 8250 7450 60  0001 C CNN
F 3 "" H 8250 7450 60  0000 C CNN
F 4 "LITE-ON,LTST-C170TBKT" H 8250 7450 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" H 8250 7450 60  0001 C CNN "SEEED,#"
F 6 "DIGI,160-1579-1-ND" H 8250 7450 60  0001 C CNN "VEND1,VEND1#"
	1    8250 7450
	1    0    0    1   
$EndComp
$Comp
L R R606
U 1 1 52E63D08
P 7800 6550
F 0 "R606" V 7880 6550 40  0000 C CNN
F 1 "2700" V 7807 6551 40  0000 C CNN
F 2 "SM0805" V 7730 6550 30  0001 C CNN
F 3 "" H 7800 6550 30  0000 C CNN
F 4 "PANASONIC,ERJ-6ENF2701V" V 7800 6550 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" V 7800 6550 60  0001 C CNN "SEEED,#"
F 6 "DIGI,P2.70KCCT-ND" V 7800 6550 60  0001 C CNN "VEND1,VEND1#"
	1    7800 6550
	0    1    -1   0   
$EndComp
$Comp
L R R605
U 1 1 52E63D11
P 7800 6350
F 0 "R605" V 7880 6350 40  0000 C CNN
F 1 "100" V 7807 6351 40  0000 C CNN
F 2 "SM0805" V 7730 6350 30  0001 C CNN
F 3 "" H 7800 6350 30  0000 C CNN
F 4 "PANASONIC,ERJ-6ENF1000V" V 7800 6350 60  0001 C CNN "MFG,MFG#"
F 5 "seeed,NA" V 7800 6350 60  0001 C CNN "seeed,#"
F 6 "digi,P100CTR-ND" V 7800 6350 60  0001 C CNN "vend1,vend1#"
	1    7800 6350
	0    1    -1   0   
$EndComp
$Comp
L R R602
U 1 1 52E63D1A
P 7800 5650
F 0 "R602" V 7880 5650 40  0000 C CNN
F 1 "2700" V 7807 5651 40  0000 C CNN
F 2 "SM0805" V 7730 5650 30  0001 C CNN
F 3 "" H 7800 5650 30  0000 C CNN
F 4 "PANASONIC,ERJ-6ENF2701V" V 7800 5650 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" V 7800 5650 60  0001 C CNN "SEEED,#"
F 6 "DIGI,P2.70KCCT-ND" V 7800 5650 60  0001 C CNN "VEND1,VEND1#"
	1    7800 5650
	0    1    -1   0   
$EndComp
$Comp
L R R601
U 1 1 52E63D23
P 7800 5450
F 0 "R601" V 7880 5450 40  0000 C CNN
F 1 "100" V 7807 5451 40  0000 C CNN
F 2 "SM0805" V 7730 5450 30  0001 C CNN
F 3 "" H 7800 5450 30  0000 C CNN
F 4 "PANASONIC,ERJ-6ENF1000V" V 7800 5450 60  0001 C CNN "MFG,MFG#"
F 5 "seeed,NA" V 7800 5450 60  0001 C CNN "seeed,#"
F 6 "digi,P100CTR-ND" V 7800 5450 60  0001 C CNN "vend1,vend1#"
	1    7800 5450
	0    1    -1   0   
$EndComp
$Comp
L LED LD602
U 1 1 52E63D2C
P 8250 5850
F 0 "LD602" H 8100 5750 50  0000 C CNN
F 1 "LED" H 8250 5750 50  0000 C CNN
F 2 "LED-0805" H 8250 5850 60  0001 C CNN
F 3 "" H 8250 5850 60  0000 C CNN
F 4 "LITE-ON,LTST-C170TBKT" H 8250 5850 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" H 8250 5850 60  0001 C CNN "SEEED,#"
F 6 "DIGI,160-1579-1-ND" H 8250 5850 60  0001 C CNN "VEND1,VEND1#"
	1    8250 5850
	1    0    0    -1  
$EndComp
$Comp
L LED LD601
U 1 1 52E63D36
P 8250 5650
F 0 "LD601" H 8100 5550 50  0000 C CNN
F 1 "LED" H 8250 5550 50  0000 C CNN
F 2 "LED-0805" H 8250 5650 60  0001 C CNN
F 3 "" H 8250 5650 60  0000 C CNN
F 4 "LITE-ON,LTST-C170TBKT" H 8250 5650 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" H 8250 5650 60  0001 C CNN "SEEED,#"
F 6 "DIGI,160-1579-1-ND" H 8250 5650 60  0001 C CNN "VEND1,VEND1#"
	1    8250 5650
	1    0    0    1   
$EndComp
$Comp
L LED LD604
U 1 1 52E63D3F
P 8250 6750
F 0 "LD604" H 8100 6650 50  0000 C CNN
F 1 "LED" H 8250 6650 50  0000 C CNN
F 2 "LED-0805" H 8250 6750 60  0001 C CNN
F 3 "" H 8250 6750 60  0000 C CNN
F 4 "LITE-ON,LTST-C170TBKT" H 8250 6750 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" H 8250 6750 60  0001 C CNN "SEEED,#"
F 6 "DIGI,160-1579-1-ND" H 8250 6750 60  0001 C CNN "VEND1,VEND1#"
	1    8250 6750
	1    0    0    -1  
$EndComp
$Comp
L LED LD603
U 1 1 52E63D48
P 8250 6550
F 0 "LD603" H 8100 6450 50  0000 C CNN
F 1 "LED" H 8250 6450 50  0000 C CNN
F 2 "LED-0805" H 8250 6550 60  0001 C CNN
F 3 "" H 8250 6550 60  0000 C CNN
F 4 "LITE-ON,LTST-C170TBKT" H 8250 6550 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" H 8250 6550 60  0001 C CNN "SEEED,#"
F 6 "DIGI,160-1579-1-ND" H 8250 6550 60  0001 C CNN "VEND1,VEND1#"
	1    8250 6550
	1    0    0    1   
$EndComp
$Comp
L R R607
U 1 1 52E63D51
P 7800 6750
F 0 "R607" V 7880 6750 40  0000 C CNN
F 1 "2700" V 7807 6751 40  0000 C CNN
F 2 "SM0805" V 7730 6750 30  0001 C CNN
F 3 "" H 7800 6750 30  0000 C CNN
F 4 "PANASONIC,ERJ-6ENF2701V" V 7800 6750 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" V 7800 6750 60  0001 C CNN "SEEED,#"
F 6 "DIGI,P2.70KCCT-ND" V 7800 6750 60  0001 C CNN "VEND1,VEND1#"
	1    7800 6750
	0    1    1    0   
$EndComp
$Comp
L R R608
U 1 1 52E63D5A
P 7800 6950
F 0 "R608" V 7880 6950 40  0000 C CNN
F 1 "100" V 7807 6951 40  0000 C CNN
F 2 "SM0805" V 7730 6950 30  0001 C CNN
F 3 "" H 7800 6950 30  0000 C CNN
F 4 "PANASONIC,ERJ-6ENF1000V" V 7800 6950 60  0001 C CNN "MFG,MFG#"
F 5 "seeed,NA" V 7800 6950 60  0001 C CNN "seeed,#"
F 6 "digi,P100CTR-ND" V 7800 6950 60  0001 C CNN "vend1,vend1#"
	1    7800 6950
	0    1    1    0   
$EndComp
$Comp
L R R603
U 1 1 52E63D63
P 7800 5850
F 0 "R603" V 7880 5850 40  0000 C CNN
F 1 "2700" V 7807 5851 40  0000 C CNN
F 2 "SM0805" V 7730 5850 30  0001 C CNN
F 3 "" H 7800 5850 30  0000 C CNN
F 4 "PANASONIC,ERJ-6ENF2701V" V 7800 5850 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" V 7800 5850 60  0001 C CNN "SEEED,#"
F 6 "DIGI,P2.70KCCT-ND" V 7800 5850 60  0001 C CNN "VEND1,VEND1#"
	1    7800 5850
	0    1    1    0   
$EndComp
$Comp
L R R604
U 1 1 52E63D6C
P 7800 6050
F 0 "R604" V 7880 6050 40  0000 C CNN
F 1 "100" V 7807 6051 40  0000 C CNN
F 2 "SM0805" V 7730 6050 30  0001 C CNN
F 3 "" H 7800 6050 30  0000 C CNN
F 4 "PANASONIC,ERJ-6ENF1000V" V 7800 6050 60  0001 C CNN "MFG,MFG#"
F 5 "seeed,NA" V 7800 6050 60  0001 C CNN "seeed,#"
F 6 "digi,P100CTR-ND" V 7800 6050 60  0001 C CNN "vend1,vend1#"
	1    7800 6050
	0    1    1    0   
$EndComp
$Comp
L C C602
U 1 1 52E63D75
P 7450 6650
F 0 "C602" V 7500 6700 40  0000 L CNN
F 1 "0.1uF" V 7500 6400 40  0000 L CNN
F 2 "SM0805" H 7488 6500 30  0001 C CNN
F 3 "~" H 7450 6650 60  0000 C CNN
F 4 "AVX,08051C104KAT2A" V 7450 6650 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" V 7450 6650 60  0001 C CNN "SEEED,#"
F 6 "DIGI,478-5028-1-ND" V 7450 6650 60  0001 C CNN "VEND1,VEND1#"
	1    7450 6650
	0    1    -1   0   
$EndComp
$Comp
L C C601
U 1 1 52E63D7E
P 7450 5750
F 0 "C601" V 7500 5800 40  0000 L CNN
F 1 "0.1uF" V 7500 5500 40  0000 L CNN
F 2 "SM0805" H 7488 5600 30  0001 C CNN
F 3 "~" H 7450 5750 60  0000 C CNN
F 4 "AVX,08051C104KAT2A" V 7450 5750 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" V 7450 5750 60  0001 C CNN "SEEED,#"
F 6 "DIGI,478-5028-1-ND" V 7450 5750 60  0001 C CNN "VEND1,VEND1#"
	1    7450 5750
	0    1    -1   0   
$EndComp
Wire Wire Line
	7650 5750 8450 5750
Wire Wire Line
	7650 6650 8450 6650
Text Label 7100 5400 1    60   ~ 0
VP
Text Label 6100 5850 2    60   ~ 0
H_IN1
Text Label 6250 6550 2    60   ~ 0
H_IN2
Text Label 6100 5650 2    60   ~ 0
H_IN3
Text Label 6250 6750 2    60   ~ 0
H_IN4
Text Label 6100 7650 2    60   ~ 0
H_IN5
Text Label 6100 7450 2    60   ~ 0
H_IN6
$Comp
L CONN_1 M601
U 1 1 52E6C25B
P 16150 950
F 0 "M601" H 16230 950 40  0000 L CNN
F 1 "CONN_1" H 16150 1005 30  0001 C CNN
F 2 "" H 16150 950 60  0000 C CNN
F 3 "" H 16150 950 60  0000 C CNN
	1    16150 950 
	1    0    0    -1  
$EndComp
NoConn ~ 16000 950 
Text Notes 6250 3300 0    160  ~ 0
6 channel high / low side driver
Text GLabel 7300 5250 3    60   Input ~ 0
5V
Wire Wire Line
	4950 5650 6300 5650
$Comp
L TC4427 U601
U 1 1 531CB7D3
P 6650 5700
F 0 "U601" H 6650 5950 60  0000 C CNN
F 1 "TC4427" H 6800 5450 50  0000 C CNN
F 2 "SOIC8-DFN" H 6650 5700 60  0001 C CNN
F 3 "" H 6650 5700 60  0000 C CNN
F 4 "MICROCHIP,TC4427AVOA" H 6650 5700 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" H 6650 5700 60  0001 C CNN "SEEED,#"
F 6 "MOUSER,579-TC4427AVOA" H 6650 5700 60  0001 C CNN "VEND1,VEND1#"
	1    6650 5700
	1    0    0    -1  
$EndComp
$Comp
L TC4427 U602
U 1 1 531CB8D8
P 6650 6600
F 0 "U602" H 6650 6850 60  0000 C CNN
F 1 "TC4427" H 6800 6350 50  0000 C CNN
F 2 "SOIC8-DFN" H 6650 6600 60  0001 C CNN
F 3 "" H 6650 6600 60  0000 C CNN
F 4 "MICROCHIP,TC4427AVOA" H 6650 6600 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" H 6650 6600 60  0001 C CNN "SEEED,#"
F 6 "MOUSER,579-TC4427AVOA" H 6650 6600 60  0001 C CNN "VEND1,VEND1#"
	1    6650 6600
	1    0    0    -1  
$EndComp
$Comp
L TC4427 U603
U 1 1 531CB8E1
P 6650 7500
F 0 "U603" H 6650 7750 60  0000 C CNN
F 1 "TC4427" H 6800 7250 50  0000 C CNN
F 2 "SOIC8-DFN" H 6650 7500 60  0001 C CNN
F 3 "" H 6650 7500 60  0000 C CNN
F 4 "MICROCHIP,TC4427AVOA" H 6650 7500 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" H 6650 7500 60  0001 C CNN "SEEED,#"
F 6 "MOUSER,579-TC4427AVOA" H 6650 7500 60  0001 C CNN "VEND1,VEND1#"
	1    6650 7500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 531CB9E5
P 6650 7800
F 0 "#PWR08" H 6650 7800 30  0001 C CNN
F 1 "GND" H 6650 7730 30  0001 C CNN
F 2 "" H 6650 7800 60  0000 C CNN
F 3 "" H 6650 7800 60  0000 C CNN
	1    6650 7800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 531CB9EB
P 6650 6900
F 0 "#PWR09" H 6650 6900 30  0001 C CNN
F 1 "GND" H 6650 6830 30  0001 C CNN
F 2 "" H 6650 6900 60  0000 C CNN
F 3 "" H 6650 6900 60  0000 C CNN
	1    6650 6900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 531CB9F1
P 6650 6000
F 0 "#PWR010" H 6650 6000 30  0001 C CNN
F 1 "GND" H 6650 5930 30  0001 C CNN
F 2 "" H 6650 6000 60  0000 C CNN
F 3 "" H 6650 6000 60  0000 C CNN
	1    6650 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 6750 6250 6750
Text Label 4950 6650 2    60   ~ 0
H_IN4
Wire Wire Line
	6300 6550 5950 6550
Wire Wire Line
	5950 6550 5950 6650
Wire Wire Line
	5950 6650 5750 6650
Wire Wire Line
	4950 6550 4950 5650
Wire Wire Line
	5750 6550 5750 5850
Wire Wire Line
	5750 5850 6300 5850
$Comp
L CONN_2 P602
U 1 1 531CC81A
P 7400 4900
F 0 "P602" V 7350 4900 40  0000 C CNN
F 1 "CONN_2" V 7450 4900 40  0000 C CNN
F 2 "SIL-2" H 7400 4900 60  0001 C CNN
F 3 "" H 7400 4900 60  0000 C CNN
F 4 "ON-SHORE,OSTVN02A150" V 7400 4900 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" V 7400 4900 60  0001 C CNN "SEEED,#"
F 6 "DIGI,ED10561-ND" V 7400 4900 60  0001 C CNN "VEND1,VEND1#"
	1    7400 4900
	0    1    -1   0   
$EndComp
$Comp
L CONN_2 P604
U 1 1 531CC8C7
P 7000 4900
F 0 "P604" V 6950 4900 40  0000 C CNN
F 1 "CONN_2" V 7050 4900 40  0000 C CNN
F 2 "SIL-2" H 7000 4900 60  0001 C CNN
F 3 "" H 7000 4900 60  0000 C CNN
F 4 "ON-SHORE,OSTVN02A150" V 7000 4900 60  0001 C CNN "MFG,MFG#"
F 5 "SEEED,NA" V 7000 4900 60  0001 C CNN "SEEED,#"
F 6 "DIGI,ED10561-ND" V 7000 4900 60  0001 C CNN "VEND1,VEND1#"
	1    7000 4900
	0    1    -1   0   
$EndComp
Text GLabel 6900 5250 3    60   Input ~ 0
12V
Wire Notes Line
	6900 4750 6900 4650
Wire Notes Line
	6900 4650 7300 4650
Wire Notes Line
	7300 4650 7300 4750
Text Notes 6450 4600 0    60   ~ 0
JUMPER SELECTED VP VOLTAGE
$EndSCHEMATC
