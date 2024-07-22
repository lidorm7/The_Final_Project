## Generated SDC file "main_upl_dnl.sdc"

## Copyright (C) 2016  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Intel and sold by Intel or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

## DATE    "Thu Aug 03 22:43:26 2017"

##
## DEVICE  "10M08DAF484C8G"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {sysclk} -period 15.150 -waveform { 0.000 7.580 } [get_ports {sysclk}]
#create_clock -name {clk15m} -period 66.660 -waveform { 0.000 33.330 } [get_ports {clk15m}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************

set_clock_latency -source   2.000 [get_clocks {sysclk}]
#set_clock_latency -source   2.000 [get_clocks {clk15m}]


#**************************************************************
# Set Clock Uncertainty
#**************************************************************

       derive_clock_uncertainty 
 # set_clock_uncertainty  -setup 1 [get_clocks  clk]
 # set_clock_uncertainty  -hold  1 [get_clocks  clk]
  
   # set_clock_uncertainty  1  -to clk15m -setup  
   # set_clock_uncertainty  0.1  -to clk15m -hold
  
    set_clock_uncertainty  1  -to sysclk -setup  
    set_clock_uncertainty  0.1  -to sysclk -hold

#**************************************************************
# Set Input Delay
#**************************************************************

#set_input_delay -add_delay  -clock [get_clocks {clk15m}]  2.000 [get_ports {clk15m}]
set_input_delay -add_delay  -clock [get_clocks {sysclk}]  2.000 [get_ports {sysclk}]


#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

