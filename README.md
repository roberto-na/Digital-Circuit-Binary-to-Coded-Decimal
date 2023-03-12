# Digital-Circuit-Binary-to-Coded-Decimal

The project aims to create a binary-to-hexadecimal converter using a [Nexys 3 board from Digilent](https://digilent.com/reference/programmable-logic/nexys-3/start). The converter takes in a binary number through a series of switches on the board and outputs the hexadecimal equivalent on a 7-segment display.

The system is implemented using VHDL code, which is loaded onto the FPGA on the Nexys 3 board. The VHDL code includes modules for input and output, as well as the main conversion logic.

The input module is responsible for reading the binary number from the switches on the board and converting it into a 4-bit binary value. This binary value is then passed on to the conversion module.

The conversion module takes the binary value as input and uses a lookup table to convert it into the corresponding hexadecimal value. The lookup table is implemented using a case statement in the VHDL code.

The output module is responsible for displaying the hexadecimal value on a 7-segment display. The display is connected to the FPGA and is driven using a common cathode connection. The output module uses a counter to cycle through the four digits of the hexadecimal value and display them on the 7-segment display.

 The use of VHDL code and FPGA technology allows for efficient and high-speed conversion, making it suitable for a wide range of applications in digital electronics and computer engineering.

# Setup
Connext the Nexys 3 and upload all the files in this repository to the board
