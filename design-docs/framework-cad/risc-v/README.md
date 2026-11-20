# DeepComputing DC-ROMA RISC-V Mainboard I (FML13V01)

This page tracks the upstream hardware documents relevant to fitting the
DeepComputing RISC-V board into a Framework 13-style rack sled. The PDFs are
linked at their source rather than copied here: the upstream repository does
not include an explicit license for these documents.

## Upstream documents

Source repository: [DC-DeepComputing/Framework — FML13V01](https://github.com/DC-DeepComputing/Framework/tree/main/FML13V01)

| Document | What it is useful for |
|---|---|
| [DC-ROMA RISC-V Mainboard Interface Overview (PDF)](https://github.com/DC-DeepComputing/Framework/blob/main/FML13V01/DC-ROMA%20RISC-V%20Mainboard%20Interface%20Overview.pdf) | Port locations/functions, fan header, and board interfaces. Version 1.0, dated 2025-02-27. |
| [DC-ROMA RISC-V Mainboard Interface Compatibility List (PDF)](https://github.com/DC-DeepComputing/Framework/blob/main/FML13V01/DC-ROMA%20RISC-V%20Mainboard%20Interface%20Compatibility%20List%20.pdf) | Supported displays, expansion cards, Wi-Fi modules, battery, and accessories. |
| [Cooler Master Mainboard Case Quick Start Guide (PDF)](https://github.com/DC-DeepComputing/Framework/blob/main/FML13V01/Cooler%20Master%20Mainboard%20Case%20Quick%20Start%20Guide.pdf) | Assembly photos, case standoffs, expansion-card installation, and power guidance. Version 1.0, dated 2025-04-11. |
| [DC-ROMA RISC-V Mainboard Replacement Guide (PDF)](https://github.com/DC-DeepComputing/Framework/blob/main/FML13V01/DC-ROMA%20RISC-V%20Mainboard%20Replacement%20Guide.pdf) | Board installation/removal reference. |

## Fit-relevant findings

- The interface overview identifies **four USB-C expansion-card positions** and a fan connector.
- The compatibility list marks common Framework expansion cards—including USB-C, USB-A, Ethernet, HDMI, DisplayPort, SD, and audio—as supported.
- The Cooler Master case guide shows the board with its supplied blower/heat-pipe cooler installed. It recommends a USB-C power adapter of at least 60 W when the board is used without a battery.
- The guide shows the board located by the Cooler Master case's standoffs. The documentation confirms compatibility with the Framework 13 chassis and Cooler Master case, but does **not** provide a dimensioned board/cooler drawing.

## Rack-design validation still required

Use the Framework 13 mechanical drawing and the physical FML13V01 assembly as references, then verify the actual board mounting points, cooler height and overhang, fan inlet/exhaust direction, and expansion-card alignment in the existing rack bay. Chassis compatibility alone is not proof that the rack's 1U airflow path is adequate.
