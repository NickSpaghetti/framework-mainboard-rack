/*
  Fit-envelope study only — NOT a print-ready sled.

  Overlays the presently known board/cooler envelopes on the existing
  CarrierTray STL. Use `profile` in the OpenSCAD Customizer to switch between:
    - "Framework 13": cooler-inclusive working envelope from the existing design
    - "RISC-V FML13V01": provisional Framework 13 envelope, to be physically checked
    - "Framework 12": STEP-derived board + stock cooler reference mesh

  Coordinates follow rebuild_all.py: X across the carrier, Y front-to-rear,
  Z up from the carrier plate bottom. The front lip is at Y=-4..0. FW12 and
  RISC-V exhaust are provisionally treated as the existing 13's left-side jet.
*/

profile = "Framework 12"; // [Framework 12, Framework 13, RISC-V FML13V01]
show_carrier = true;
show_bay = true;
show_clear_bay = true;

carrier_width = 121.5;
carrier_depth = 240;
bay_clear_width = 114;
bay_clear_x = (carrier_width - bay_clear_width) / 2;
board_center_x = carrier_width / 2;
board_center_y = carrier_depth / 2;
board_seat_z = 11.5;

// Framework 12 mainboard assembly STEP converted to STL. Source axes are:
// X = 218.8 mm long axis, Y = 8.045 mm board/cooler stack, Z = 124.053 mm
// cross-board assembly envelope.
fw12_source_x_min = -109.4;
fw12_source_y_min = -11.655;
fw12_source_z_min = 3.0;
fw12_source_z_max = 127.053;
fw12_assembly_width = fw12_source_z_max - fw12_source_z_min;
fw12_assembly_length = 218.8;
fw12_assembly_thickness = 8.045;

// Current rack's verified Framework 13 board + cooler cross-bay/depth envelope.
fw13_envelope_x = 111.83;
fw13_envelope_y = 226.9;

// Preview mesh from this repository's current, known-fitting Framework 13 carrier.
if (show_carrier)
    color([0.30, 0.32, 0.35, 0.55])
        import("../../stl/CarrierTray.stl", convexity=10);

// Align the existing BayModule mesh to the carrier's local coordinates:
// carrier is offset +3.25 mm in X and +5 mm in Z in rebuild_all.py.
if (show_bay)
    %color([0.55, 0.55, 0.58, 0.18])
        translate([-3.25, 0, -5])
            import("../../stl/BayModule.stl", convexity=10);

// Clear bay envelope; ghosted so it remains visible through the placeholder.
if (show_clear_bay)
    %color([0.30, 0.75, 0.35, 0.16])
        translate([bay_clear_x, 0, 3.05])
            cube([bay_clear_width, carrier_depth, 0.25]);

if (profile == "Framework 12") {
    // Reorient STEP axes: source X->rack Y, Y->rack Z, Z->rack X.
    // Center assembly on the existing carrier and seat its lowest feature at
    // the provisional board plane. This is a clash-check placement, not mounting.
    echo("FW12 complete assembly width vs nominal bay width (mm):",
         bay_clear_width - fw12_assembly_width);
    color([0.15, 0.55, 0.90, 0.60])
        multmatrix([
            [0, 0, 1, board_center_x - (fw12_source_z_min + fw12_source_z_max)/2],
            [1, 0, 0, board_center_y - fw12_source_x_min - fw12_assembly_length/2],
            [0, 1, 0, board_seat_z - fw12_source_y_min],
            [0, 0, 0, 1]
        ])
            import("framework12/FRAMEWORK_LAPTOP_12_MAINBOARD_V01_reference.stl",
                   convexity=10);
} else if (profile == "Framework 13") {
    color([0.15, 0.55, 0.90, 0.45])
        translate([board_center_x - fw13_envelope_x/2,
                   board_center_y - fw13_envelope_y/2,
                   board_seat_z])
            cube([fw13_envelope_x, fw13_envelope_y, 1.1]);
} else if (profile == "RISC-V FML13V01") {
    // Provisional only: RISC-V docs establish Framework 13 case compatibility,
    // but do not publish a dimensioned board/cooler envelope. User reports both
    // FW12 and RISC-V exhaust toward top-left in cooler-up bird's-eye view; this
    // placeholder does not model airflow direction.
    color([0.85, 0.45, 0.12, 0.45])
        translate([board_center_x - fw13_envelope_x/2,
                   board_center_y - fw13_envelope_y/2,
                   board_seat_z])
            cube([fw13_envelope_x, fw13_envelope_y, 1.1]);
}
