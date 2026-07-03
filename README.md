<img width="1710" height="1112" alt="Screenshot 2026-06-23 at 12 19 37 PM" src="https://github.com/user-attachments/assets/dae9ed99-2a3e-4278-b02c-a46087d25430" />

Flow Implementation for a 4x4 MAC Unit Chip

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
│ 1. Functional Sim (Xcelium)         │ ◄── Command: xrun -f fun_simulation.f -gui
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
│   ├── mac.v                 # Core 4x4 MAC design internal logic
│   └── top_wrapper.v         # Top level module containing Pad Frame/IO Ring
├── testbench/
│   └── tb_mac.v
    └── tb_post_mac.v            # Verification environment for signed arithmetic corner cases
├── constraints/
│   └── constraints.sdc       # Timing constraints file (Clock, Input/Output delays)
├── synthesis/
│   ├── scripts/
│   │   └── script_sv.tcl     # Cadence Genus synthesis script
│   └── reports/              # Genus generated Area, Gate Count, Power & Timing reports
├── pnr/
│   ├── scripts/
│   │   └── innovus_flow.tcl  # Cadence Innovus automated design flow script
│   └── outputs/              # DEF, LEF, and final Netlist files
└── verification/
    └── calibre/              # Calibre DRC, LVS, and Antenna runsets



# 🛠 Technology Stack

| Domain | Tool |
|---------|------|
| RTL Design | Verilog |
| RTL Simulation | Cadence Xcelium |
| Waveform Analysis | SimVision |
| Logic Synthesis | Cadence Genus |
| Physical Design | Cadence Innovus |
| Technology Node | SCL 180nm Bulk CMOS |

---

# 📂 Repository Structure

```text
.
├── rtl/
├── tb/
├── constraints/
├── scripts/
├── synthesis/
│   ├── reports/
│   └── outputs/
├── pnr/
│   ├── reports/
│   ├── outputs/
│   └── screenshots/
├── verification/
└── README.md
```

---

# 🔄 Complete ASIC Design Flow

```text
RTL Design
    │
    ▼
RTL Functional Verification
    │
    ▼
Logic Synthesis
    │
    ▼
Floorplanning
    │
    ▼
Power Planning (PDN)
    │
    ▼
Standard Cell Placement
    │
    ▼
Clock Tree Synthesis
    │
    ▼
Global & Detail Routing
    │
    ▼
Filler Cell Insertion
    │
    ▼
GDSII Generation
    │
    ▼
DRC & LVS Verification
    │
    ▼
Tapeout Ready
```

---

# ⚙️ Design Implementation

# 🚀 Project Environment Setup

Before starting the RTL-to-GDSII implementation flow, create a dedicated **Cadence project library** and initialize the **SCL 180nm design environment**.

---

## 📁 Step 1: Configure the Technology Setup File

Copy the provided **`toolRC_scl_new`** configuration file to your home directory.

```bash
cp toolRC_scl_new ~/
```

Open the file and update the **`PROJ_ROOT`** variable (around **Line 86**) to point to your project workspace.

```text
PROJ_ROOT=/home/<username>/<work_directory>/providename
```

### Example

```text
Username       : debajyoti
Work Directory : projects

PROJ_ROOT=/home/debajyoti/projects/providename
```

---

# 📂 Step 2: Create the Project Workspace

Navigate to your working directory.

```bash
cd <work_directory>
```

Create the project folder.

```bash
mkdir providename
```

Move into the project directory.

```bash
cd providename
```

Start the C-shell environment.

```bash
csh
```

Load the SCL 180nm environment variables.

```bash
source ~/toolRC_scl_new
```

---

# 👤 Step 3: Register the User

Create the user list file.

```bash
echo <username> > user_list
```

### Example

```bash
echo username > user_list
```

---

# 🏗️ Step 4: Generate the Cadence Project Library

Initialize the complete project tree using the SCL 180nm technology flow.

```bash
makeProjectTree scl6m \
-flow SCLSL18_6M1L \
-users user_list \
-flow_lib create \
-cds \
-attach \
-ver \
-assura \
-pvs
```

### What This Creates

- 📁 Cadence Project Library
- 📁 Virtuoso Workspace
- 📁 Verification Environment
- 📁 Assura/PVS Directories
- 📁 Standard Project Structure
- 📁 Technology Library Attachments

---

# 📁 Step 5: Navigate to the Cadence Workspace

```bash
cd work_libs/<username>/cds
```

Example

```bash
cd work_libs/username/cds
```

---

# 🔗 Step 6: Create the Cadence Project

Initialize the Cadence project.

```bash
cdsprj providename
```

---

# 💻 Step 7: Launch Cadence Virtuoso

Finally, start the Virtuoso design environment.

```bash
virtuoso
```

---

# 📊 Complete Setup Workflow

```text
Copy toolRC_scl_new
          │
          ▼
Update PROJ_ROOT
          │
          ▼
Create Project Directory
          │
          ▼
Load SCL Environment
          │
          ▼
Create user_list
          │
          ▼
Generate Project Tree
          │
          ▼
Create Cadence Project
          │
          ▼
Launch Virtuoso
```

---

# ✅ Expected Directory Structure

After successful initialization, the project structure will resemble:

```text
<work_directory>/
│
└── scl6m/
    ├── work_libs/
    │   └── <username>/
    │       ├── cds/
    │       ├── ver/
    │       ├── assura/
    │       └── pvs/
    │
    ├── user_list
    └── project_files
```

---

> **Note:** Ensure that the `PROJ_ROOT` path is correctly configured before running `makeProjectTree`, as it defines the root location for all Cadence libraries and project data.

## ① Environment & PDK Initialization

Initialize the SCL 180nm Process Design Kit.
Here toolRC_scl is used where environment is set for all the cadence tools along with their paths (path setup) taken from the bin. Here write command for csh to invoke in csh as commands written inside are C shell script not the bash script.

```bash
csh
```

```bash
source ~/toolRC_scl
```

### Configures

- Technology Libraries
- Standard Cell LEFs
- Liberty Timing Models
- RC Extraction Tables
- Tool Environment Variables

---

## ② RTL Functional Verification

Compile and simulate the RTL design using the Xcelium tool.For this run the below cmd and if incisive used replace with the irun.

```bash
xrun -f fun_simulation.f -gui -access +rwc
```

### Features Verified

✔ Signed Multiplication

✔ 16-bit Accumulation

✔ Functional Correctness

✔ Waveform Debugging using SimVision

<p align="center">

### RTL Waveform

<img width="1920" height="1080" alt="Screenshot from 2026-07-01 11-31-28" src="https://github.com/user-attachments/assets/228e5e96-7284-47bd-9669-8363ce00d071" />


</p>

---

## ③ Logic Synthesis

Generate the technology-mapped gate-level netlist.

```bash
genus -legacy_ui -f scripts/script_sv.tcl
```

### Outputs
It generates the gate level netlist file ext .v along the sdc constraints.
- Gate-Level Netlist
- Timing Report
- Area Report
- Power Report

<p align="center">

### Synthesis Schematic

<img width="1920" height="1080" alt="Screenshot from 2026-07-01 12-22-03" src="https://github.com/user-attachments/assets/ee063979-2871-4eac-a3e4-864e1a5461af" />

## Post Synthesis gatelevel netlist simulation

<img width="1710" height="1112" alt="Screenshot 2026-06-22 at 4 10 03 PM" src="https://github.com/user-attachments/assets/cba6f23d-53d0-4b1d-a0a2-0e619777316f" />


</p>

---

## ④ Floorplanning & Power Planning

## Now before moving on to the Physical Design, at first import the netlist and constraint file into the import design folder inside the physical design.along with otherfiles needs to be created move into the tcl script file where its mentioned what all need to be configured.

Imported the synthesized netlist into Cadence Innovus and created the chip floorplan.

```bash
source import.tcl
```

### Major Tasks

- Core Floorplanning
- IO Boundary Definition
- Power Ring Generation
- Power Stripe Insertion
- Special Routing

<p align="center">

### Floorplan & Powerplan

```bash
cd 1_Floorplan (folder -> floorplan)
source floor.tcl
cd 2_Powerplan (folder -> powerplan)
```
## IO pads and Floorplan
<img width="1920" height="1080" alt="Screenshot from 2026-07-01 15-18-26" src="https://github.com/user-attachments/assets/09bf6ae7-4446-4ac4-be8f-0867141a48d7" />



</p>

---

## ⑤ Standard Cell Placement

Performed timing-driven placement with congestion optimization.

### Optimization Goals

- Cell Legalization
- Congestion Reduction
- Buffer Insertion
- Timing Improvement

<p align="center">

### Placement

```bash
cd 3_placement
source place.tcl
```

<img width="1920" height="1080" alt="Screenshot from 2026-07-01 15-21-27 (1)" src="https://github.com/user-attachments/assets/c70ce5b8-4eaa-4995-b1be-7e172398e673" />
<img width="1920" height="1080" alt="Screenshot from 2026-07-01 15-21-27" src="https://github.com/user-attachments/assets/3f337c2c-ae17-434e-a7d9-41d8c2a6d630" />


</p>

---

## ⑥ Clock Tree Synthesis (CTS)

Generated an optimized clock network for all sequential elements.

```bash
cd 4_CTS
source cts.tcl
```

### CTS Objectives

- Balanced Clock Distribution
- Reduced Clock Skew
- Hold Violation Fixing
- Clock Buffer Optimization

<p align="center">

### Clock Tree

<img width="1920" height="1080" alt="Screenshot from 2026-07-01 15-27-36" src="https://github.com/user-attachments/assets/d7829e1f-895c-4896-85e4-32fea7fafe4f" />
<img width="1920" height="1080" alt="Screenshot from 2026-07-01 15-22-36" src="https://github.com/user-attachments/assets/78403281-f11e-4448-821a-4c03779d8644" />



</p>

---

## ⑦ Global & Detail Routing

Completed signal routing while satisfying design rules.

### Routing Features

- Global Routing
- Detail Routing
- Antenna Fixing
- DRC-aware Routing

<p align="center">

### Routed Design

<img width="1920" height="1080" alt="Screenshot from 2026-07-01 15-21-20" src="https://github.com/user-attachments/assets/f5ae22fa-815f-4e74-8aa4-afc6b5cf13a0" />


</p>

---

## ⑧ Dummy Fill & GDSII Generation

Performed filler insertion in the whole empty space followed by GDSII stream-out for tapeout.

---

### Verification Status

✅ DRC CLEAN

✅ LVS MATCHED

✅ Zero Antenna Violations

<img width="1710" height="1112" alt="Screenshot 2026-06-26 at 7 36 01 PM" src="https://github.com/user-attachments/assets/f53bea35-ad69-47fc-b5d8-f8519ffd5372" />

---

# 📊 Quality of Results (QoR)

| Metric | Result |
|---------|---------|
| Technology | SCL 180nm prim |
| DRC Errors | **0** |
| LVS Mismatches | **0** |
| Antenna Violations | **0** |
