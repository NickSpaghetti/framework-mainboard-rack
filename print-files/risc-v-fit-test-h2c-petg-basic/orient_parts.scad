// Re-export orientation-prepared test parts from the legacy FW13 STL geometry.
// Select part in the OpenSCAD Customizer; this script does not add or subtract
// geometry from the source parts.
part = "BayModule"; // [BayModule, CarrierTray, RetainerPeg]

if (part == "BayModule") {
    // Standing on the front face: source Y (248 mm) becomes build Z.
    translate([0, 43.2, 0])
        rotate([90, 0, 0])
            import("../../stl/BayModule.stl", convexity=10);
} else if (part == "CarrierTray") {
    // Already oriented plate-down in the source STL.
    import("../../stl/CarrierTray.stl", convexity=10);
} else if (part == "RetainerPeg") {
    // Already oriented with the head at Z=0 in the source STL.
    import("../../stl/RetainerPeg.stl", convexity=10);
}
