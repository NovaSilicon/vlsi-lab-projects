# TCAD Device Simulation — PN Junctions and N-MOSFETs

A series of TCAD (Sentaurus) device-simulation exercises exploring PN junction diode behavior
and planar N-MOSFET electrostatics, from a 2D single-gate baseline through double-gate 2D and
3D variants. Completed as part of a graduate-level VLSI Devices & Technology course.

## Contents

1. [PN Junction Diode — Forward I-V and Zero-Bias Band Diagram](01-pn-junction-forward-iv.md)
   Baseline PN junction with asymmetric doping (N_A = 10¹⁸, N_D = 10¹⁶ cm⁻³); forward I-V and
   zero-bias band diagram; cut-in voltage extraction.

2. [PN Junction Diode — Effect of P-Side Doping](02-pn-junction-doping-dependence.md)
   Same N-side doping, two different P-side doping levels (10¹⁵ vs. 10¹⁸ cm⁻³); comparison of
   forward I-V and band diagrams.

3. [2D Planar N-MOSFET — Transfer/Output Characteristics](03-nmos-2d-planar-characteristics.md)
   Conventional single-gate 2D N-MOSFET; threshold-voltage behavior at two drain biases;
   channel-length modulation parameter λ from the output curve.

4. [2D Double-Gate Planar N-MOSFET](04-nmos-double-gate-2d.md)
   Same device extended to a double-gate structure with matched gate bias; λ extraction and
   comparison against the single-gate baseline.

5. [3D Double-Gate Planar N-MOSFET](05-nmos-double-gate-3d.md)
   The double-gate device extended into 3D with a finite (200 nm) width; threshold voltage and
   λ extraction, compared against the 2D double-gate result.

## Tooling

All simulations were built and run in **Synopsys Sentaurus TCAD** (structure editor + device
simulator + visualizer). Device structures, meshing, and doping were defined in the structure
editor; DC sweeps were run in the device simulator; I-V curves and band diagrams were read from
the visualizer with on-plot probe readouts.

## Notes on the numbers

Several of the extracted values (cut-in voltages, threshold voltages, λ) are read directly off
simulator plots via on-screen probe points rather than pulled from a dedicated
threshold-extraction routine. Where the available screenshots didn't include the data needed
for a requested comparison, that gap is noted explicitly in the corresponding report rather
than papered over with an invented number.
