## 🚦 Traffic Light Controller on Nexys A7

The **Traffic Light Controller** is a real-time FPGA-based digital system developed on the **Nexys A7 (Artix-7)** FPGA board using **Verilog HDL**. The project replicates the operation of a real-world traffic signal at a four-way road intersection by automatically controlling the **Red, Yellow, and Green** lights through a **Finite State Machine (FSM)**. The controller ensures that traffic flows safely by allowing only one direction to receive a green signal at a time while all conflicting directions remain stopped.

Built with a **modular hardware architecture**, the design consists of a **clock divider**, **FSM controller**, and **LED output module**. The onboard **100 MHz system clock** is divided into slower timing intervals to simulate realistic traffic light delays. Based on these timing signals, the FSM transitions through predefined traffic states, generating synchronized control signals for each traffic light. The onboard LEDs of the Nexys A7 visually represent the active traffic signals, providing an intuitive demonstration of the controller's operation in hardware.

The project follows the standard traffic signal sequence:

* 🟢 **North–South Green** → 🔴 East–West Red
* 🟡 **North–South Yellow** → 🔴 East–West Red
* 🔴 **North–South Red** → 🟢 East–West Green
* 🔴 **North–South Red** → 🟡 East–West Yellow

This sequence repeats continuously, ensuring safe and collision-free traffic movement while demonstrating deterministic state transitions in digital hardware.

The entire system was **designed, simulated, synthesized, and implemented using Xilinx Vivado**. Functional verification was performed through simulation and waveform analysis before deploying the design to the Nexys A7 FPGA, where its operation was validated in real hardware.

---

## ✨ Key Features

* 🚦 **FSM-based** traffic signal control
* ⏱️ **Programmable timing** using a clock divider
* 💡 **Real-time LED visualization** of traffic lights
* 🔄 Automatic cyclic operation with synchronized state transitions
* ⚡ Fully synchronous design driven by the onboard **100 MHz** clock
* 🧩 Modular Verilog HDL implementation for easy maintenance and scalability
* 🧪 Functional simulation and hardware validation using **Xilinx Vivado**
* 📚 Clean and reusable architecture suitable for learning FPGA design concepts

---

## 🛠️ Technologies Used

* **FPGA Board:** Nexys A7 (Artix-7)
* **HDL:** Verilog HDL
* **Design Tool:** Xilinx Vivado
* **Design Methodology:** Finite State Machine (FSM)
* **Clock Source:** 100 MHz Onboard Oscillator
* **Output Device:** Onboard LEDs

---

## 🎯 Learning Outcomes

This project provides practical experience with:

* Finite State Machine (FSM) design
* Sequential digital logic
* Clock division and timing generation
* FPGA implementation and hardware debugging
* Verilog HDL coding and simulation
* Digital system verification using Vivado
* Real-time embedded hardware control

> **This project demonstrates how FPGA technology can be used to build reliable, deterministic, and scalable real-time control systems, making it an excellent foundation for more advanced applications such as adaptive traffic management, smart city infrastructure, and intelligent transportation systems.**
