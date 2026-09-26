# FPGA Assessments - Anonymous Public Archive

A beginner-friendly archive of FPGA digital design assessments, with cleaned report PDFs and visible Verilog source where the reports contain code.

## What is here

- `reports/` contains the cleaned PDF for each assessment.
- `README.md` and the assessment index are written for beginners.
- The PDFs were prepared as public copies with personal and institutional identifiers removed.
- File names intentionally do not contain student IDs or names.

- `src/` contains Verilog/SystemVerilog source extracted from the report PDFs.
- `src/assessment-XX/INDEX.md` explains the source files for each assessment.

## Assessments

- **Assessment 01:** FPGA assessment 1 - [`reports/assessment-01.pdf`](reports/assessment-01.pdf)
- **Assessment 02:** FPGA assessment 2 - [`reports/assessment-02.pdf`](reports/assessment-02.pdf)
- **Assessment 03:** FPGA assessment 3 - [`reports/assessment-03.pdf`](reports/assessment-03.pdf)
- **Assessment 04:** FPGA assessment 4 - [`reports/assessment-04.pdf`](reports/assessment-04.pdf)
- **Assessment 05:** FPGA assessment 5 - [`reports/assessment-05.pdf`](reports/assessment-05.pdf)
- **Assessment 06:** FPGA assessment 6 - [`reports/assessment-06.pdf`](reports/assessment-06.pdf)

## Beginner workflow

### 1. Start with the PDF
Open the assessment PDF first. It contains the problem statement, implementation details, screenshots, results, and conclusion where available.

### 2. Find the source code
Open `src/assessment-XX/INDEX.md` and choose the module or testbench you want to study.

### 3. Simulate simple Verilog
For plain Verilog files, Icarus Verilog can be used from a terminal. Example:
```bash
iverilog -o sim.out src/assessment-02/module_ha.v src/assessment-02/testbench_t_ha.v
vvp sim.out
```
The exact file names differ by assessment. Check the assessment index before running a command.

### 4. Use Quartus for FPGA-specific work
Board pin assignments, Quartus IP, and vendor-specific modules require the appropriate Quartus Prime project/toolchain. Those files are kept separate from the basic Verilog examples.

## Privacy note
This repository is intentionally prepared as an anonymous public study archive. Before publishing, also check your GitHub account profile, commit author, repository settings, screenshots added later, and any new files you upload.

## Important

These files are shared for educational reference. Check the rules of the course, institution, or software/tool licenses before publishing or reusing them.
