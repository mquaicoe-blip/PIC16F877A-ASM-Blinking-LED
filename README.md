# Lab 1 Part Two: Assembly Language LED Blinking

## Project Description
This project focuses on low-level programming for the **PIC16F877A microcontroller** using **Assembly Language (ASM)**. The goal is to configure specific output pins, implement a nested delay routine to ensure human visibility, and create a continuous loop to blink three LEDs sequentially (RA0, RA1, and RA2).

The project was developed using **MPLAB X IDE** (MPASM/pic-as assembler) and validated through **Proteus simulation**.

## Hardware Components (Simulated)
* **Microcontroller:** PIC16F877A
* **LEDs:** 3 LEDs (connected to PORTA: RA0, RA1, RA2)
* **Resistors:** Current-limiting resistors for the LEDs
* **Clock:** 16MHz Crystal Oscillator with 22pF capacitors
* **Reset:** Master Clear (MCLR) circuit with a pull-up resistor

## Files in this Repository
* `main.asm`: The assembly source code containing the initialization, LED sequence, and triple-nested delay logic.
* `circuit_simulation.pdsprj`: The Proteus design file used to verify the code functionality.

## Technical Details
* **Language:** PIC Assembly (ASM)
* **Clock Speed:** 16MHz
* **Compiler:** MPASM
