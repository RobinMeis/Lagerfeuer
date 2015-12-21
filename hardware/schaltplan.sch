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
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "21 dec 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED D2
U 1 1 56786343
P 5850 3750
F 0 "D2" H 5850 3850 50  0000 C CNN
F 1 "LED" H 5850 3650 50  0000 C CNN
F 2 "~" H 5850 3750 60  0000 C CNN
F 3 "~" H 5850 3750 60  0000 C CNN
	1    5850 3750
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 56786352
P 6250 3750
F 0 "D1" H 6250 3850 50  0000 C CNN
F 1 "LED" H 6250 3650 50  0000 C CNN
F 2 "~" H 6250 3750 60  0000 C CNN
F 3 "~" H 6250 3750 60  0000 C CNN
	1    6250 3750
	-1   0    0    1   
$EndComp
$Comp
L ATTINY85-P IC?
U 1 1 56786361
P 3500 4100
F 0 "IC?" H 2350 4500 40  0000 C CNN
F 1 "ATTINY85-P" H 4500 3700 40  0000 C CNN
F 2 "DIP8" H 4500 4100 35  0000 C CIN
F 3 "" H 3500 4100 60  0000 C CNN
	1    3500 4100
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 567863E0
P 6450 4000
F 0 "R1" V 6530 4000 40  0000 C CNN
F 1 "180" V 6457 4001 40  0000 C CNN
F 2 "~" V 6380 4000 30  0000 C CNN
F 3 "~" H 6450 4000 30  0000 C CNN
	1    6450 4000
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 567863EF
P 1950 4100
F 0 "C1" H 1950 4200 40  0000 L CNN
F 1 "100n" H 1956 4015 40  0000 L CNN
F 2 "~" H 1988 3950 30  0000 C CNN
F 3 "~" H 1950 4100 60  0000 C CNN
	1    1950 4100
	1    0    0    -1  
$EndComp
Text GLabel 1700 4350 0    60   Input ~ 0
5 Volt
Text GLabel 1700 3850 0    60   Input ~ 0
GND
Wire Wire Line
	1700 3850 2150 3850
Wire Wire Line
	1950 3850 1950 3900
Connection ~ 1950 3850
Wire Wire Line
	1700 4350 2150 4350
Wire Wire Line
	1950 4300 1950 4850
Connection ~ 1950 4350
Wire Wire Line
	1950 4850 5400 4850
Wire Wire Line
	5400 4850 5400 3850
Wire Wire Line
	5400 3850 4850 3850
$Comp
L R R2
U 1 1 56786533
P 5650 4000
F 0 "R2" V 5730 4000 40  0000 C CNN
F 1 "180" V 5657 4001 40  0000 C CNN
F 2 "~" V 5580 4000 30  0000 C CNN
F 3 "~" H 5650 4000 30  0000 C CNN
	1    5650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4250 5650 4250
Wire Wire Line
	4850 4350 6450 4350
Wire Wire Line
	6450 4350 6450 4250
$EndSCHEMATC