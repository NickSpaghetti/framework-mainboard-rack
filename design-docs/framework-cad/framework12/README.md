# Framework Laptop 12 Mainboard Reference Drawing

`Framework_Laptop_12_MB_Generic_P5.dxf` is Framework's **Main Board Outline**
sheet, included for dimension and feature-location reference. It is not a
manufacturing profile or substitute for checking the physical board and stock
cooler.

`FRAMEWORK_LAPTOP_12_MAINBOARD_V01_reference.stl` is a visualization mesh
converted from Framework's STEP assembly for OpenSCAD. It includes the board
and modeled cooler geometry; it is a reference mesh, not a print part. The
conversion used CadQuery 2.8.0 with 0.15 mm linear and 0.15 rad angular
tolerances. In source STEP axes its overall bounds are approximately
218.8 x 8.0 x 124.1 mm. `../sled-fit-study.scad` places this assembly in the
existing carrier envelope; final fit still depends on exact orientation and
how the stock cooler overlaps the vent openings.

Source: [FrameworkComputer/Framework-Laptop-12 — Mainboard/2D](https://github.com/FrameworkComputer/Framework-Laptop-12/tree/main/Mainboard/2D)

Framework Laptop 12 documentation is licensed under **CC BY 4.0**. Attribution:
Framework Computer Inc., *Framework Laptop 12 Main Board Outline*, 2025.
License: <https://creativecommons.org/licenses/by/4.0/>.

## Stock cooler references

- Framework's [Laptop 12 specifications](https://frame.work/laptop12?tab=specs)
  list a 64 x 5.5 mm fan and a single 8 mm heat pipe for the 13th-gen board.
  These are component specifications, not a dimensioned cooler envelope.
- A [Framework Community airflow discussion](https://community.frame.work/t/is-framework-12-okay-with-closed-lid-use/77170)
  describes the rear/right area as intake and the left edge as exhaust, blowing
  upward in laptop orientation. Treat this as a directional reference and
  confirm the actual orientation in the rack.
