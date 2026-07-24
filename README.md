Traffic Light Controller on Nexys A7 🚦

The Traffic Light Controller is an FPGA-based digital design project implemented on the Nexys A7 (Artix-7) development board using Verilog HDL. The project simulates the operation of a real-world traffic signal system by controlling the sequence of Red, Yellow, and Green lights using a Finite State Machine (FSM). Each traffic signal remains active for a predefined duration, ensuring a safe and organized flow of vehicles through an intersection.

The design uses the Nexys A7's onboard 100 MHz system clock, which is divided to generate timing intervals suitable for traffic signal operation. A clock divider module creates slower timing pulses, while the FSM transitions between different traffic light states based on these timing events. The outputs of the FSM are connected to the board's onboard LEDs, allowing the current traffic signal status to be observed directly on the FPGA hardware.

The controller follows the standard traffic light sequence:

North–South Green, East–West Red
North–South Yellow, East–West Red
North–South Red, East–West Green
North–South Red, East–West Yellow

This sequence repeats continuously, ensuring that only one direction receives a green signal at a time while the other direction remains stopped, preventing traffic conflicts.

The project was designed, simulated, synthesized, and implemented using Xilinx Vivado. Functional verification was performed through simulation to validate the FSM transitions and output behavior before programming the FPGA. After implementation, the design was tested on the Nexys A7 board to verify correct operation under real hardware conditions.

This project demonstrates several important concepts in digital system design, including:

Finite State Machine (FSM) design
Sequential logic implementation
Clock division and timing generation
Synchronous digital circuit design
FPGA implementation and hardware verification
Verilog HDL coding and simulation using Vivado
Features
🚦 Finite State Machine (FSM)-based traffic light controller
⏱️ Configurable timing using a clock divider
💡 LED-based traffic signal indication on the Nexys A7 board
🔄 Automatic and continuous traffic light sequencing
⚙️ Synchronous design using the onboard 100 MHz clock
🧪 Functional simulation and waveform verification
🛠️ Synthesized and implemented using Xilinx Vivado
📚 Modular Verilog design for easy modification and future enhancements

This project serves as an excellent introduction to FPGA-based embedded digital systems and demonstrates how finite state machines can be used to implement reliable real-time control applications such as traffic management.
