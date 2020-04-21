# Introduction
## Purpose
The purpose of this requirements document is to provide the requirements for the optical fiber interface module test platform.
## Scope
This requirements document defines the test required for a single OPTWFD-INTERFACE board.
# Description
The interface module is responsible for converting optical fiber inputs into electrical inputs  for a  time‐to‐digital  chip  that measures  the  difference  in  time  between  the initial  pulse and a  synchronized  stop  pulse  provided  to  the module.  The interface module  uses  a  set  of  Texas  Instruments  TDC7201  time‐to‐digital  (TDC)  converters typically  used  in  time‐of‐flight  LIDAR  systems  to  detect  the  timing.    The  TDC7201 acts as a stopwatch and measures the time difference between a start pulse and a stop  pulse  with a  high accuracy.    By  directly  driving  the  start  pulse  input with  the first light detected and manufacturing a stop pulse that is given to all the chips at the same  time,  it  is  mathematically  possible  to  compute  the  time  difference  between any  two  channels.    As  a  basic example,  if  channel  1  indicates a  time  of  1 ms, and channel 2 indicates of  time of 2 ms, it can be deduced  that channel 2's start pulse occurred 1 ms before that of channel 1.  The interface module will consist of six of these timer chips, which provides  for twelve channels.  The chips are controlled as SPI bus slaves.  The SPI bus master will be external to the interface module. 

The tester for this module will provide the SPI bus master, as well as discrete I/O and power necessary to exercise the module.
# Operational Requirements
The interface module testset shall provide for the means for a user to exercise the capabilities of the interface module.  This will require the user to be able to arm the timers and extract the timing data after the system has been triggered.  In order to accomplish that, the following flow must happen.
1. Initialize the timer chips. 
The I/Os for the chip select demultiplexer and SPI lines shall be exercised to prepare the TDC7201 devices for capture.  This will require appropriate startup sequencing of the clock and timer chip enable discretes, proper chip selects, and programming to select "Individual Mode 2", as per the TDC7201 datasheet and OPTWFD-TRD-INTERFACE.
2. Inject light signals into the interface board.  
Method TBD.
3. The "Light Detected" discrete will trigger when the board detects light.  
The test set will need to provide the "Stop" discrete no later than 8 ms after the light is first injected into the system.  The recommendation is to read in the "Light Detected" discrete, wait 6 ms, then output the "Stop" discrete, pending a better understanding of the delays in the system being used for the testset.
4. The chip selects and SPI interfaces are used again to extract the data from the TDC7201 timers.
5. The data is then processed by storing the largest timer value read, then subtracting all of the acutal data points from that number, and displaying the results.
# Interface Requirements
The testset will be required to provide 2 amps at 3.3 Volts, SPI lines, 6 discrete outputs to drive the chip select demux, 2 discrete outputs for clock and timer chip enable, 1 discrete output for stop, and 1 discrete input for light detected, as per OPTWFD-TRD-INTERFACE.  There are no speed requirements for the SPI bus speed, but 10kHz should be sufficient.  
# Dimensions and Mounting
There are no specific requirements for dimensions.
# Environmental Requirements
There are no specific environmental requirements for the testset.  The operational environment is a climate controlled lab.