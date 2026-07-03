# RTL to GDSII Flow Implementation for a 4x4 MAC Unit Chip

[![VLSI Backend](https://img.shields.io/badge/VLSI-Backend%20Design-blue.svg)]() 
[![Cadence Suite](https://img.shields.io/badge/Tools-Cadence%20Suite-green.svg)](https://www.cadence.com/)
[![Process Node](https://img.shields.io/badge/PDK-SCL%20180nm-orange.svg)]()

This repository contains the complete physical design and implementation flow to transform a **4x4 Multiply-Accumulate (MAC) Unit** from Register Transfer Level (RTL) code into a tapeout-ready **GDSII** database. The flow is built using the industry-standard Cadence Digital Design Suite.

---

## 📌 Design Overview & Architecture

The core design is a synchronous **4x4 MAC Unit** that performs fast signed multiplication and accumulation.

- **Stage 1 (Input Stage):** Latches two 4-bit signed input streams (`A` and `B`) on the rising edge of the clock.
- **Stage 2 (Arithmetic Core):** A 4-bit combinational signed multiplier computing an 8-bit intermediate product.
- **Stage 3 (Accumulation):** A 16-bit register tracking the running sum with sign-extension logic to prevent overflow across sequential calculations.
- **Chip Integration:** The MAC design is encapsulated inside a top-level wrapper (`top_wrapper.v`) which integrates the core logic with a 48-pin package pad ring layout (**PNC Serial No. 8** standard).

---

## 🏗️ RTL-to-GDSII Execution Flow

```text
  [ RTL Design (.v) ] + [ Testbench ]
           │
           ▼
┌─────────────────────────────────────┐
│ 1. Functional Sim (Xcelium)        │ ◄── Command: xrun -f fun_simulation.f -gui
└──────────────────┬──────────────────┘
                   │  (Verified RTL & Testbench)
                   ▼
┌─────────────────────────────────────┐
│ 2. Synthesis (Genus)                │ ◄── Command: genus -legacy_ui -f script_sv.tcl
└──────────────────┬──────────────────┘
                   │  (Gate-Level Netlist + .sdc)
                   ▼
┌─────────────────────────────────────┐
│ 3. Floorplan & Power Plan (Innovus) │ ◄── Command: floorPlan & sroute
└──────────────────┬──────────────────┘
                   │  (Power Rings & Stripes Created)
                   ▼
┌─────────────────────────────────────┐
│ 4. Placement (Innovus)              │ ◄── Command: place_opt_design
└──────────────────┬──────────────────┘
                   │  (Standard Cells Placed)
                   ▼
┌─────────────────────────────────────┐
│ 5. Clock Tree Synthesis (Innovus)   │ ◄── Command: ccopt_design
└──────────────────┬──────────────────┘
                   │  (H-Tree Balanced, Skew Minimized)
                   ▼
┌─────────────────────────────────────┐
│ 6. Global & Detail Route (Innovus)  │ ◄── Command: routeDesign
└──────────────────┬──────────────────┘
                   │  (Signal Interconnects Closed)
                   ▼
┌─────────────────────────────────────┐
│ 7. Verification & Export            │ ◄── Command: Calibre DRC/LVS & streamOut
└─────────────────────────────────────┘

├── rtl/
│   ├── mac.v                 # Core 4x4 MAC design logic
│   └── top_wrapper.v         # Top level module containing Pad Frame/IO Ring
├── testbench/
│   └── tb_mac.v              # Verification environment for signed arithmetic corner cases
├── constraints/
│   └── constraints.sdc       # Timing constraints file (Clock, Input/Output delays)
├── synthesis/
│   ├── scripts/
│   │   └── script_sv.tcl     # Cadence Genus synthesis script
│   └── reports/              # Genus generated Area, Gate Count & Timing reports
├── pnr/
│   ├── scripts/
│   │   └── innovus_flow.tcl  # Cadence Innovus automated design flow script
│   └── outputs/              # DEF, LEF, and final Netlist files
└── verification/
    └── calibre/              # Siemens Calibre DRC, LVS, and Antenna runsets
