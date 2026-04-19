# 🚗 Car Parking System using Verilog

## 📖 Course Information
- Course Name : Digital Design and Computer Organization
- Course Code : UE24CS251A

---

## 📌 Overview

This project implements a **Car Parking Management System** using
**Verilog HDL** and simulates it using **Icarus Verilog (iverilog)**.

The system models a parking lot with **8 parking spaces**, where each
space is monitored using a sensor. The design processes sensor inputs
and reflects real-time parking occupancy.

---

## 🎯 Objectives

-   Design a digital system using **Verilog HDL**
-   Simulate real-world parking logic using **combinational circuits**
-   Verify functionality using a **testbench**
-   Visualize signal transitions using **GTKWave**

---

## ⚙️ System Design

### 🔹 Inputs

-   `sensors [7:0]`
    -   8-bit input where each bit represents a parking sensor\
    -   `1` → Car present\
    -   `0` → Empty space

### 🔹 Outputs

-   `parking_spaces [7:0]`
    -   Reflects occupancy of each parking slot

---

## 🧠 Working Logic

-   Each parking slot has a corresponding sensor\
-   The system directly maps sensor input to parking status\
-   The output dynamically updates based on sensor values\
-   Supports multiple real-time scenarios:
    -   No cars parked\
    -   Partial occupancy\
    -   Fully occupied parking

---

## 🧪 Testbench

The testbench (`car_parking_system_tb.v`) verifies system behavior
across different cases:

-   No cars present\
-   Cars in selected slots\
-   All slots occupied\
-   Random occupancy patterns

It also generates a **VCD (Value Change Dump)** file for waveform
analysis.

---

## 🛠️ Tools Used

-   Verilog HDL\
-   Icarus Verilog (iverilog)\
-   GTKWave

---

## 🚀 How to Run

### Compile

``` bash
iverilog -o car_parking_system_tb car_parking_system_tb.v car_parking_system.v
```

### Run

``` bash
vvp car_parking_system_tb
```

### View Waveform

``` bash
gtkwave car_parking_system_tb.vcd
```

---

## 📁 Project Structure

    ├── car_parking_system.v
    ├── car_parking_system_tb.v
    ├── car_parking_system_tb.vcd
    └── README.md

---

## ✨ Features

-   Simple and scalable design\
-   Real-time occupancy tracking\
-   Easy simulation and debugging

---

## 🔮 Future Enhancements

-   Entry/exit gate logic\
-   Available slots counter\
-   FPGA implementation\
-   Display integration
