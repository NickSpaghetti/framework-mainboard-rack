# RISC-V Single-Bay Fit Test — H2C / Bambu PETG Basic

These are **orientation-prepared copies** of the legacy Framework 13 rack parts
for a first mechanical test of the DC-ROMA RISC-V board. They do not change the
part geometry and are not FW12 sleds or final multi-board qualification parts.

## Printer and material profile

- Printer preset: `Bambu Lab H2C 0.4 nozzle`
- Filament preset: `Bambu PETG Basic @BBL H2C 0.4 nozzle`
- Process preset: `0.20mm Standard @BBL H2C`
- Supports: off
- Wall loops: 4
- Sparse infill: 35% (within the source design's 30–40% guidance)
- Top/bottom shell layers: 5

The BayModule is printed vertically and uses an 8 mm brim. The CarrierTray and
RetainerPeg need no brim in the source design; add one only if the first layer
does not adhere reliably. The repository's legacy FW13 README is the source for
the orientations and structural print notes.

## Parts for one test bay

| File | Quantity | Bed orientation |
|---|---:|---|
| `BayModule_front-face-down.stl` | 1 | Front face on bed; 248 mm dimension vertical; 8 mm brim |
| `CarrierTray_plate-down.stl` | 1 | Flat, plate on bed |
| `RetainerPeg_head-down.stl` | 3 | Heads on bed |

The STLs carry geometry/orientation only; select the printer, filament, and
process presets above in Bambu Studio. These settings are a fit-test starting
point, not a thermal/creep qualification for a continuously loaded rack.
