# VHDL Multiplier Overflow Bug

This repository demonstrates a potential overflow issue in a simple VHDL multiplier.  The issue arises from implicit type conversions and the limitations of the output signal's bit-width.

## Bug Description

The provided VHDL code implements an unsigned multiplier. However, it does not explicitly handle potential overflows that can occur when multiplying large input values.  This results in unexpected results or incorrect output. 

## Solution

A solution is provided in `multiplier_solution.vhdl` to address this by ensuring the output signal has sufficient bit-width to accommodate the largest possible product.