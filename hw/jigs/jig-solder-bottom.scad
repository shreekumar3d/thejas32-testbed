
// Auto generated file by jig-gen, the awesome automatic
// jig generator for your PCB designs.
//
// Input board file   : ../thejas32-testbed/hw/thejas32-testbed.kicad_pcb
// Configuration file : ../thejas32-testbed/hw/jigs/solder-bottom.toml
//
// Complete configuration file is embedded at the end of this
// file.

// { These are configurable parameters
// you can tweak these here and count on
// openscad magic to do show you the result
// right away!

// Tesellate finer than 3D printer can print
$fs = 0.05;

// Gap for components to slide into their shell,
// on all sides in the horizontal plane (in mm)
shell_gap = 0.1;
                
// Thickness of shells (in mm)
shell_thickness = 0.8;

// Thickness of PCB (in mm)
pcb_thickness=1.8;

// Clearance between typical shells and PCB
// Allows you to check and confirm component fit
shell_clearance=1.0;

// Shells jet out of the PCB by this much
// (Mostly a visualization/debug aid)
shell_protrude=1;

// Thickness of base (in mm)
// base provides a holding structure for the shells
// and connects it to the frame (on which the board
// sits)
base_thickness = 1.0;

// Line width in the mesh
mesh_line_width = 1.6;

// By default, we generate a base with a delaunay
// frame holding the shells together.
//
// Sometimes you just need a solid base - e.g. to
// put some text - like PCB info, version
// and even stuff like qrcodes! For these you
// mostly need a solid base. Set this is non-zero
// if that's what you need.
base_is_solid = 0;

// Board will sit on a lip, close to mounting holes
// Lips that lie in a square of this size (in mm)
// will be part of the model.
lip_size=15;

// Gap (in mm) between board edge and slot on which the board sits
pcb_gap=0.3;

// Width of the lip (in mm) on which the board rests
pcb_overlap=0.5;

// PCB holder's wall thickness (in mm)
// This will be the thickness after the gap
pcb_holder_perimeter=1.6;

// The board can have a (lower) perimeter for added
// strength/aesthetics.  Perimeter height is above
// the base, and in mm
pcb_perimeter_height = 2;

// } End of configurable parameters

// { START : Computed Values

// Height of the tallest component on the top side
topmost_z=8.53948;
// Height of the individual components
max_z_J7_0=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x05_P2.54mm_Vertical.wrl
max_z_J5_0=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x05_P2.54mm_Vertical.wrl
max_z_J9_0=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x05_P2.54mm_Vertical.wrl
max_z_J1_0=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x04_P2.54mm_Vertical.wrl
max_z_J3_0=8.53948; //3D Model: ${KICAD6_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_2x03_P2.54mm_Vertical.wrl
max_z_J6_0=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x10_P2.54mm_Vertical.wrl
max_z_JP3_0=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x02_P2.54mm_Vertical.wrl
max_z_JP2_0=8.53948; //3D Model: ${KICAD6_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x02_P2.54mm_Vertical.wrl
max_z_J13_0=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x03_P2.54mm_Vertical.wrl
max_z_U5_0=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl
max_z_U5_1=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl
max_z_U5_2=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl
max_z_U5_3=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl
max_z_U4_0=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl
max_z_U4_1=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl
max_z_U4_2=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl
max_z_U4_3=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl
max_z_J12_0=8.53948; //3D Model: ${KICAD6_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_2x20_P2.54mm_Vertical.wrl
max_z_J2_0=2.5749970500000003; //3D Model: ${KIPRJMOD}/3dmodels/1050170001.wrl
max_z_JP4_0=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x02_P2.54mm_Vertical.wrl
max_z_J8_0=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x03_P2.54mm_Vertical.wrl
max_z_JP1_0=8.53948; //3D Model: ${KICAD6_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x02_P2.54mm_Vertical.wrl
max_z_J10_0=8.53948; //3D Model: ${KICAD6_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_2x10_P2.54mm_Vertical.wrl
max_z_J4_0=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_2x05_P2.54mm_Vertical.wrl
max_z_J11_0=8.53948; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x03_P2.54mm_Vertical.wrl
max_z_U1_1=7.00024; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinSocket_2.54mm.3dshapes/PinSocket_1x20_P2.54mm_Vertical.wrl
max_z_U1_2=7.00024; //3D Model: ${KICAD8_3DMODEL_DIR}/Connector_PinSocket_2.54mm.3dshapes/PinSocket_1x20_P2.54mm_Vertical.wrl
// } END : Computed Values

module pcb_edge() {
  polygon(
    points=[
      [117.249518,-66.600000],
      [198.600000,-66.600000],
      [198.600000,-155.800000],
      [117.249518,-155.800000],
    ]
  );
}
// Outline for J7_0
module ref_J7_0() {
  polygon(
    points=[
      [-1.270000,1.016000],
      [-1.270000,-11.176000],
      [-1.016000,-11.430000],
      [1.016000,-11.430000],
      [1.270000,-11.176000],
      [1.270000,1.016000],
      [1.016000,1.270000],
      [-1.016000,1.270000],
    ]
  );
}
// Perimeter for J7_0
module peri_J7_0() {
  translate([195.000000,-92.725000,pcb_thickness+max_z_J7_0])
      offset(r=shell_gap+shell_thickness)
        ref_J7_0();
}
// Outline for J5_0
module ref_J5_0() {
  polygon(
    points=[
      [-1.270000,1.016000],
      [-1.270000,-11.176000],
      [-1.016000,-11.430000],
      [1.016000,-11.430000],
      [1.270000,-11.176000],
      [1.270000,1.016000],
      [1.016000,1.270000],
      [-1.016000,1.270000],
    ]
  );
}
// Perimeter for J5_0
module peri_J5_0() {
  translate([137.350000,-110.210000,pcb_thickness+max_z_J5_0])
      offset(r=shell_gap+shell_thickness)
        ref_J5_0();
}
// Outline for J9_0
module ref_J9_0() {
  polygon(
    points=[
      [11.176000,1.270000],
      [-1.016000,1.270000],
      [-1.270000,1.016000],
      [-1.270000,-1.016000],
      [-1.016000,-1.270000],
      [11.176000,-1.270000],
      [11.430000,-1.016000],
      [11.430000,1.016000],
    ]
  );
}
// Perimeter for J9_0
module peri_J9_0() {
  translate([156.800000,-126.000000,pcb_thickness+max_z_J9_0])
      offset(r=shell_gap+shell_thickness)
        ref_J9_0();
}
// Outline for J1_0
module ref_J1_0() {
  polygon(
    points=[
      [8.636000,1.270000],
      [-1.016000,1.270000],
      [-1.270000,1.016000],
      [-1.270000,-1.016000],
      [-1.016000,-1.270000],
      [8.636000,-1.270000],
      [8.890000,-1.016000],
      [8.890000,1.016000],
    ]
  );
}
// Perimeter for J1_0
module peri_J1_0() {
  translate([127.490000,-126.000000,pcb_thickness+max_z_J1_0])
      offset(r=shell_gap+shell_thickness)
        ref_J1_0();
}
// Outline for J3_0
module ref_J3_0() {
  polygon(
    points=[
      [-3.556000,-1.270000],
      [1.016000,-1.270000],
      [1.270000,-1.016000],
      [1.270000,6.096000],
      [1.016000,6.350000],
      [-3.556000,6.350000],
      [-3.810000,6.096000],
      [-3.810000,-1.016000],
    ]
  );
}
// Perimeter for J3_0
module peri_J3_0() {
  translate([122.340000,-107.680000,pcb_thickness+max_z_J3_0])
      offset(r=shell_gap+shell_thickness)
        ref_J3_0();
}
// Outline for J6_0
module ref_J6_0() {
  polygon(
    points=[
      [23.876000,1.270000],
      [-1.016000,1.270000],
      [-1.270000,1.016000],
      [-1.270000,-1.016000],
      [-1.016000,-1.270000],
      [23.876000,-1.270000],
      [24.130000,-1.016000],
      [24.130000,1.016000],
    ]
  );
}
// Perimeter for J6_0
module peri_J6_0() {
  translate([139.000000,-153.900000,pcb_thickness+max_z_J6_0])
      offset(r=shell_gap+shell_thickness)
        ref_J6_0();
}
// Outline for JP3_0
module ref_JP3_0() {
  polygon(
    points=[
      [-3.556000,1.270000],
      [-3.810000,1.016000],
      [-3.810000,-1.016000],
      [-3.556000,-1.270000],
      [1.016000,-1.270000],
      [1.270000,-1.016000],
      [1.270000,1.016000],
      [1.016000,1.270000],
    ]
  );
}
// Perimeter for JP3_0
module peri_JP3_0() {
  translate([122.600000,-126.000000,pcb_thickness+max_z_JP3_0])
      offset(r=shell_gap+shell_thickness)
        ref_JP3_0();
}
// Outline for JP2_0
module ref_JP2_0() {
  polygon(
    points=[
      [-1.270000,3.556000],
      [-1.270000,-1.016000],
      [-1.016000,-1.270000],
      [1.016000,-1.270000],
      [1.270000,-1.016000],
      [1.270000,3.556000],
      [1.016000,3.810000],
      [-1.016000,3.810000],
    ]
  );
}
// Perimeter for JP2_0
module peri_JP2_0() {
  translate([177.600000,-128.240000,pcb_thickness+max_z_JP2_0])
      offset(r=shell_gap+shell_thickness)
        ref_JP2_0();
}
// Outline for J13_0
module ref_J13_0() {
  polygon(
    points=[
      [6.096000,1.270000],
      [-1.016000,1.270000],
      [-1.270000,1.016000],
      [-1.270000,-1.016000],
      [-1.016000,-1.270000],
      [6.096000,-1.270000],
      [6.350000,-1.016000],
      [6.350000,1.016000],
    ]
  );
}
// Perimeter for J13_0
module peri_J13_0() {
  translate([140.190000,-126.000000,pcb_thickness+max_z_J13_0])
      offset(r=shell_gap+shell_thickness)
        ref_J13_0();
}
// Outline for U5_0
module ref_U5_0() {
  polygon(
    points=[
      [-8.890000,-3.530600],
      [-8.890000,-5.562600],
      [-8.636000,-5.816600],
      [-6.604000,-5.816600],
      [-6.350000,-5.562600],
      [-6.350000,-3.530600],
      [-6.604000,-3.276600],
      [-8.636000,-3.276600],
    ]
  );
}
// Perimeter for U5_0
module peri_U5_0() {
  translate([188.780000,-129.470000,pcb_thickness+max_z_U5_0])
      offset(r=shell_gap+shell_thickness)
        ref_U5_0();
}
// Outline for U5_1
module ref_U5_1() {
  polygon(
    points=[
      [-8.890000,5.562600],
      [-8.890000,3.530600],
      [-8.636000,3.276600],
      [-6.604000,3.276600],
      [-6.350000,3.530600],
      [-6.350000,5.562600],
      [-6.604000,5.816600],
      [-8.636000,5.816600],
    ]
  );
}
// Perimeter for U5_1
module peri_U5_1() {
  translate([188.780000,-129.470000,pcb_thickness+max_z_U5_1])
      offset(r=shell_gap+shell_thickness)
        ref_U5_1();
}
// Outline for U5_2
module ref_U5_2() {
  polygon(
    points=[
      [6.350000,-3.530600],
      [6.350000,-5.562600],
      [6.604000,-5.816600],
      [8.636000,-5.816600],
      [8.890000,-5.562600],
      [8.890000,-3.530600],
      [8.636000,-3.276600],
      [6.604000,-3.276600],
    ]
  );
}
// Perimeter for U5_2
module peri_U5_2() {
  translate([188.780000,-129.470000,pcb_thickness+max_z_U5_2])
      offset(r=shell_gap+shell_thickness)
        ref_U5_2();
}
// Outline for U5_3
module ref_U5_3() {
  polygon(
    points=[
      [6.350000,5.562600],
      [6.350000,3.530600],
      [6.604000,3.276600],
      [8.636000,3.276600],
      [8.890000,3.530600],
      [8.890000,5.562600],
      [8.636000,5.816600],
      [6.604000,5.816600],
    ]
  );
}
// Perimeter for U5_3
module peri_U5_3() {
  translate([188.780000,-129.470000,pcb_thickness+max_z_U5_3])
      offset(r=shell_gap+shell_thickness)
        ref_U5_3();
}
// Outline for U4_0
module ref_U4_0() {
  polygon(
    points=[
      [-5.562600,8.890000],
      [-5.816600,8.636000],
      [-5.816600,6.604000],
      [-5.562600,6.350000],
      [-3.530600,6.350000],
      [-3.276600,6.604000],
      [-3.276600,8.636000],
      [-3.530600,8.890000],
    ]
  );
}
// Perimeter for U4_0
module peri_U4_0() {
  translate([179.330000,-146.120000,pcb_thickness+max_z_U4_0])
      offset(r=shell_gap+shell_thickness)
        ref_U4_0();
}
// Outline for U4_1
module ref_U4_1() {
  polygon(
    points=[
      [3.530600,6.350000],
      [5.562600,6.350000],
      [5.816600,6.604000],
      [5.816600,8.636000],
      [5.562600,8.890000],
      [3.530600,8.890000],
      [3.276600,8.636000],
      [3.276600,6.604000],
    ]
  );
}
// Perimeter for U4_1
module peri_U4_1() {
  translate([179.330000,-146.120000,pcb_thickness+max_z_U4_1])
      offset(r=shell_gap+shell_thickness)
        ref_U4_1();
}
// Outline for U4_2
module ref_U4_2() {
  polygon(
    points=[
      [-5.816600,-6.604000],
      [-5.816600,-8.636000],
      [-5.562600,-8.890000],
      [-3.530600,-8.890000],
      [-3.276600,-8.636000],
      [-3.276600,-6.604000],
      [-3.530600,-6.350000],
      [-5.562600,-6.350000],
    ]
  );
}
// Perimeter for U4_2
module peri_U4_2() {
  translate([179.330000,-146.120000,pcb_thickness+max_z_U4_2])
      offset(r=shell_gap+shell_thickness)
        ref_U4_2();
}
// Outline for U4_3
module ref_U4_3() {
  polygon(
    points=[
      [3.530600,-8.890000],
      [5.562600,-8.890000],
      [5.816600,-8.636000],
      [5.816600,-6.604000],
      [5.562600,-6.350000],
      [3.530600,-6.350000],
      [3.276600,-6.604000],
      [3.276600,-8.636000],
    ]
  );
}
// Perimeter for U4_3
module peri_U4_3() {
  translate([179.330000,-146.120000,pcb_thickness+max_z_U4_3])
      offset(r=shell_gap+shell_thickness)
        ref_U4_3();
}
// Outline for J12_0
module ref_J12_0() {
  polygon(
    points=[
      [49.276000,3.810000],
      [-1.016000,3.810000],
      [-1.270000,3.556000],
      [-1.270000,-1.016000],
      [-1.016000,-1.270000],
      [49.276000,-1.270000],
      [49.530000,-1.016000],
      [49.530000,3.556000],
    ]
  );
}
// Perimeter for J12_0
module peri_J12_0() {
  translate([133.520000,-71.800000,pcb_thickness+max_z_J12_0])
      offset(r=shell_gap+shell_thickness)
        ref_J12_0();
}
// Outline for J2_0
module ref_J2_0() {
  polygon(
    points=[
      [-3.749994,-4.006355],
      [-3.464983,-4.099992],
      [1.349995,-3.749992],
      [1.649995,-2.799994],
      [1.649995,2.799994],
      [1.349995,3.749993],
      [-3.464983,4.099992],
      [-3.749995,4.006355],
    ]
  );
}
// Perimeter for J2_0
module peri_J2_0() {
  translate([119.958800,-119.500000,pcb_thickness+max_z_J2_0])
      offset(r=shell_gap+shell_thickness)
        ref_J2_0();
}
// Outline for JP4_0
module ref_JP4_0() {
  polygon(
    points=[
      [-1.270000,1.016000],
      [-1.270000,-1.016000],
      [-1.016000,-1.270000],
      [3.556000,-1.270000],
      [3.810000,-1.016000],
      [3.810000,1.016000],
      [3.556000,1.270000],
      [-1.016000,1.270000],
    ]
  );
}
// Perimeter for JP4_0
module peri_JP4_0() {
  translate([119.815111,-111.709437,pcb_thickness+max_z_JP4_0])
      offset(r=shell_gap+shell_thickness)
        ref_JP4_0();
}
// Outline for J8_0
module ref_J8_0() {
  polygon(
    points=[
      [6.096000,1.270000],
      [-1.016000,1.270000],
      [-1.270000,1.016000],
      [-1.270000,-1.016000],
      [-1.016000,-1.270000],
      [6.096000,-1.270000],
      [6.350000,-1.016000],
      [6.350000,1.016000],
    ]
  );
}
// Perimeter for J8_0
module peri_J8_0() {
  translate([119.200000,-153.900000,pcb_thickness+max_z_J8_0])
      offset(r=shell_gap+shell_thickness)
        ref_J8_0();
}
// Outline for JP1_0
module ref_JP1_0() {
  polygon(
    points=[
      [-1.270000,3.556000],
      [-1.270000,-1.016000],
      [-1.016000,-1.270000],
      [1.016000,-1.270000],
      [1.270000,-1.016000],
      [1.270000,3.556000],
      [1.016000,3.810000],
      [-1.016000,3.810000],
    ]
  );
}
// Perimeter for JP1_0
module peri_JP1_0() {
  translate([177.600000,-134.950000,pcb_thickness+max_z_JP1_0])
      offset(r=shell_gap+shell_thickness)
        ref_JP1_0();
}
// Outline for J10_0
module ref_J10_0() {
  polygon(
    points=[
      [-3.556000,-1.270000],
      [1.016000,-1.270000],
      [1.270000,-1.016000],
      [1.270000,23.876000],
      [1.016000,24.130000],
      [-3.556000,24.130000],
      [-3.810000,23.876000],
      [-3.810000,-1.016000],
    ]
  );
}
// Perimeter for J10_0
module peri_J10_0() {
  translate([122.300000,-98.780001,pcb_thickness+max_z_J10_0])
      offset(r=shell_gap+shell_thickness)
        ref_J10_0();
}
// Outline for J4_0
module ref_J4_0() {
  polygon(
    points=[
      [-3.556000,-1.270000],
      [1.016000,-1.270000],
      [1.270000,-1.016000],
      [1.270000,11.176000],
      [1.016000,11.430000],
      [-3.556000,11.430000],
      [-3.810000,11.176000],
      [-3.810000,-1.016000],
    ]
  );
}
// Perimeter for J4_0
module peri_J4_0() {
  translate([195.000000,-87.160000,pcb_thickness+max_z_J4_0])
      offset(r=shell_gap+shell_thickness)
        ref_J4_0();
}
// Outline for J11_0
module ref_J11_0() {
  polygon(
    points=[
      [-1.270000,6.096000],
      [-1.270000,-1.016000],
      [-1.016000,-1.270000],
      [1.016000,-1.270000],
      [1.270000,-1.016000],
      [1.270000,6.096000],
      [1.016000,6.350000],
      [-1.016000,6.350000],
    ]
  );
}
// Perimeter for J11_0
module peri_J11_0() {
  translate([195.000000,-113.279999,pcb_thickness+max_z_J11_0])
      offset(r=shell_gap+shell_thickness)
        ref_J11_0();
}
// Outline for U1_1
module ref_U1_1() {
  polygon(
    points=[
      [-25.400000,7.620000],
      [25.400000,7.620000],
      [25.400000,10.160000],
      [-25.400000,10.160000],
    ]
  );
}
// Perimeter for U1_1
module peri_U1_1() {
  translate([142.800000,-140.490000,pcb_thickness+max_z_U1_1])
      offset(r=shell_gap+shell_thickness)
        ref_U1_1();
}
// Outline for U1_2
module ref_U1_2() {
  polygon(
    points=[
      [25.400000,-10.160000],
      [25.400000,-7.620000],
      [-25.400000,-7.620000],
      [-25.400000,-10.160000],
    ]
  );
}
// Perimeter for U1_2
module peri_U1_2() {
  translate([142.800000,-140.490000,pcb_thickness+max_z_U1_2])
      offset(r=shell_gap+shell_thickness)
        ref_U1_2();
}
// Shell for J7_0
module shell_J7_0() {
  translate([195.000000,-92.725000,shell_clearance])
      linear_extrude(max_z_J7_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_J7_0();
          offset(shell_gap)
            ref_J7_0();
        }
}
// Pocket for J7_0
module pocket_J7_0() {
  translate([195.000000,-92.725000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_J7_0)
        offset(shell_gap)
          ref_J7_0();
}
// Shell for J5_0
module shell_J5_0() {
  translate([137.350000,-110.210000,shell_clearance])
      linear_extrude(max_z_J5_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_J5_0();
          offset(shell_gap)
            ref_J5_0();
        }
}
// Pocket for J5_0
module pocket_J5_0() {
  translate([137.350000,-110.210000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_J5_0)
        offset(shell_gap)
          ref_J5_0();
}
// Shell for J9_0
module shell_J9_0() {
  translate([156.800000,-126.000000,shell_clearance])
      linear_extrude(max_z_J9_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_J9_0();
          offset(shell_gap)
            ref_J9_0();
        }
}
// Pocket for J9_0
module pocket_J9_0() {
  translate([156.800000,-126.000000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_J9_0)
        offset(shell_gap)
          ref_J9_0();
}
// Shell for J1_0
module shell_J1_0() {
  translate([127.490000,-126.000000,shell_clearance])
      linear_extrude(max_z_J1_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_J1_0();
          offset(shell_gap)
            ref_J1_0();
        }
}
// Pocket for J1_0
module pocket_J1_0() {
  translate([127.490000,-126.000000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_J1_0)
        offset(shell_gap)
          ref_J1_0();
}
// Shell for J3_0
module shell_J3_0() {
  translate([122.340000,-107.680000,shell_clearance])
      linear_extrude(max_z_J3_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_J3_0();
          offset(shell_gap)
            ref_J3_0();
        }
}
// Pocket for J3_0
module pocket_J3_0() {
  translate([122.340000,-107.680000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_J3_0)
        offset(shell_gap)
          ref_J3_0();
}
// Shell for J6_0
module shell_J6_0() {
  translate([139.000000,-153.900000,shell_clearance])
      linear_extrude(max_z_J6_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_J6_0();
          offset(shell_gap)
            ref_J6_0();
        }
}
// Pocket for J6_0
module pocket_J6_0() {
  translate([139.000000,-153.900000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_J6_0)
        offset(shell_gap)
          ref_J6_0();
}
// Shell for JP3_0
module shell_JP3_0() {
  translate([122.600000,-126.000000,shell_clearance])
      linear_extrude(max_z_JP3_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_JP3_0();
          offset(shell_gap)
            ref_JP3_0();
        }
}
// Pocket for JP3_0
module pocket_JP3_0() {
  translate([122.600000,-126.000000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_JP3_0)
        offset(shell_gap)
          ref_JP3_0();
}
// Shell for JP2_0
module shell_JP2_0() {
  translate([177.600000,-128.240000,shell_clearance])
      linear_extrude(max_z_JP2_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_JP2_0();
          offset(shell_gap)
            ref_JP2_0();
        }
}
// Pocket for JP2_0
module pocket_JP2_0() {
  translate([177.600000,-128.240000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_JP2_0)
        offset(shell_gap)
          ref_JP2_0();
}
// Shell for J13_0
module shell_J13_0() {
  translate([140.190000,-126.000000,shell_clearance])
      linear_extrude(max_z_J13_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_J13_0();
          offset(shell_gap)
            ref_J13_0();
        }
}
// Pocket for J13_0
module pocket_J13_0() {
  translate([140.190000,-126.000000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_J13_0)
        offset(shell_gap)
          ref_J13_0();
}
// Shell for U5_0
module shell_U5_0() {
  translate([188.780000,-129.470000,shell_clearance])
      linear_extrude(max_z_U5_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_U5_0();
          offset(shell_gap)
            ref_U5_0();
        }
}
// Pocket for U5_0
module pocket_U5_0() {
  translate([188.780000,-129.470000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_U5_0)
        offset(shell_gap)
          ref_U5_0();
}
// Shell for U5_1
module shell_U5_1() {
  translate([188.780000,-129.470000,shell_clearance])
      linear_extrude(max_z_U5_1-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_U5_1();
          offset(shell_gap)
            ref_U5_1();
        }
}
// Pocket for U5_1
module pocket_U5_1() {
  translate([188.780000,-129.470000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_U5_1)
        offset(shell_gap)
          ref_U5_1();
}
// Shell for U5_2
module shell_U5_2() {
  translate([188.780000,-129.470000,shell_clearance])
      linear_extrude(max_z_U5_2-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_U5_2();
          offset(shell_gap)
            ref_U5_2();
        }
}
// Pocket for U5_2
module pocket_U5_2() {
  translate([188.780000,-129.470000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_U5_2)
        offset(shell_gap)
          ref_U5_2();
}
// Shell for U5_3
module shell_U5_3() {
  translate([188.780000,-129.470000,shell_clearance])
      linear_extrude(max_z_U5_3-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_U5_3();
          offset(shell_gap)
            ref_U5_3();
        }
}
// Pocket for U5_3
module pocket_U5_3() {
  translate([188.780000,-129.470000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_U5_3)
        offset(shell_gap)
          ref_U5_3();
}
// Shell for U4_0
module shell_U4_0() {
  translate([179.330000,-146.120000,shell_clearance])
      linear_extrude(max_z_U4_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_U4_0();
          offset(shell_gap)
            ref_U4_0();
        }
}
// Pocket for U4_0
module pocket_U4_0() {
  translate([179.330000,-146.120000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_U4_0)
        offset(shell_gap)
          ref_U4_0();
}
// Shell for U4_1
module shell_U4_1() {
  translate([179.330000,-146.120000,shell_clearance])
      linear_extrude(max_z_U4_1-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_U4_1();
          offset(shell_gap)
            ref_U4_1();
        }
}
// Pocket for U4_1
module pocket_U4_1() {
  translate([179.330000,-146.120000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_U4_1)
        offset(shell_gap)
          ref_U4_1();
}
// Shell for U4_2
module shell_U4_2() {
  translate([179.330000,-146.120000,shell_clearance])
      linear_extrude(max_z_U4_2-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_U4_2();
          offset(shell_gap)
            ref_U4_2();
        }
}
// Pocket for U4_2
module pocket_U4_2() {
  translate([179.330000,-146.120000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_U4_2)
        offset(shell_gap)
          ref_U4_2();
}
// Shell for U4_3
module shell_U4_3() {
  translate([179.330000,-146.120000,shell_clearance])
      linear_extrude(max_z_U4_3-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_U4_3();
          offset(shell_gap)
            ref_U4_3();
        }
}
// Pocket for U4_3
module pocket_U4_3() {
  translate([179.330000,-146.120000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_U4_3)
        offset(shell_gap)
          ref_U4_3();
}
// Shell for J12_0
module shell_J12_0() {
  translate([133.520000,-71.800000,shell_clearance])
      linear_extrude(max_z_J12_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_J12_0();
          offset(shell_gap)
            ref_J12_0();
        }
}
// Pocket for J12_0
module pocket_J12_0() {
  translate([133.520000,-71.800000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_J12_0)
        offset(shell_gap)
          ref_J12_0();
}
// Shell for J2_0
module shell_J2_0() {
  translate([119.958800,-119.500000,shell_clearance])
      linear_extrude(max_z_J2_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_J2_0();
          offset(shell_gap)
            ref_J2_0();
        }
}
// Pocket for J2_0
module pocket_J2_0() {
  translate([119.958800,-119.500000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_J2_0)
        offset(shell_gap)
          ref_J2_0();
}
// Shell for JP4_0
module shell_JP4_0() {
  translate([119.815111,-111.709437,shell_clearance])
      linear_extrude(max_z_JP4_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_JP4_0();
          offset(shell_gap)
            ref_JP4_0();
        }
}
// Pocket for JP4_0
module pocket_JP4_0() {
  translate([119.815111,-111.709437,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_JP4_0)
        offset(shell_gap)
          ref_JP4_0();
}
// Shell for J8_0
module shell_J8_0() {
  translate([119.200000,-153.900000,shell_clearance])
      linear_extrude(max_z_J8_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_J8_0();
          offset(shell_gap)
            ref_J8_0();
        }
}
// Pocket for J8_0
module pocket_J8_0() {
  translate([119.200000,-153.900000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_J8_0)
        offset(shell_gap)
          ref_J8_0();
}
// Shell for JP1_0
module shell_JP1_0() {
  translate([177.600000,-134.950000,shell_clearance])
      linear_extrude(max_z_JP1_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_JP1_0();
          offset(shell_gap)
            ref_JP1_0();
        }
}
// Pocket for JP1_0
module pocket_JP1_0() {
  translate([177.600000,-134.950000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_JP1_0)
        offset(shell_gap)
          ref_JP1_0();
}
// Shell for J10_0
module shell_J10_0() {
  translate([122.300000,-98.780001,shell_clearance])
      linear_extrude(max_z_J10_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_J10_0();
          offset(shell_gap)
            ref_J10_0();
        }
}
// Pocket for J10_0
module pocket_J10_0() {
  translate([122.300000,-98.780001,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_J10_0)
        offset(shell_gap)
          ref_J10_0();
}
// Shell for J4_0
module shell_J4_0() {
  translate([195.000000,-87.160000,shell_clearance])
      linear_extrude(max_z_J4_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_J4_0();
          offset(shell_gap)
            ref_J4_0();
        }
}
// Pocket for J4_0
module pocket_J4_0() {
  translate([195.000000,-87.160000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_J4_0)
        offset(shell_gap)
          ref_J4_0();
}
// Shell for J11_0
module shell_J11_0() {
  translate([195.000000,-113.279999,shell_clearance])
      linear_extrude(max_z_J11_0-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_J11_0();
          offset(shell_gap)
            ref_J11_0();
        }
}
// Pocket for J11_0
module pocket_J11_0() {
  translate([195.000000,-113.279999,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_J11_0)
        offset(shell_gap)
          ref_J11_0();
}
// Shell for U1_1
module shell_U1_1() {
  translate([142.800000,-140.490000,shell_clearance])
      linear_extrude(max_z_U1_1-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_U1_1();
          offset(shell_gap)
            ref_U1_1();
        }
}
// Pocket for U1_1
module pocket_U1_1() {
  translate([142.800000,-140.490000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_U1_1)
        offset(shell_gap)
          ref_U1_1();
}
// Shell for U1_2
module shell_U1_2() {
  translate([142.800000,-140.490000,shell_clearance])
      linear_extrude(max_z_U1_2-shell_clearance)
        difference() {
          offset(r=shell_gap+shell_thickness)
            ref_U1_2();
          offset(shell_gap)
            ref_U1_2();
        }
}
// Pocket for U1_2
module pocket_U1_2() {
  translate([142.800000,-140.490000,-shell_protrude])
      linear_extrude(shell_protrude+pcb_thickness+max_z_U1_2)
        offset(shell_gap)
          ref_U1_2();
}

module mounted_component_shells() {
  translate([0,0,pcb_thickness])
    union() {
      shell_J7_0();
      shell_J5_0();
      shell_J9_0();
      shell_J1_0();
      shell_J3_0();
      shell_J6_0();
      shell_JP3_0();
      shell_JP2_0();
      shell_J13_0();
      shell_U5_0();
      shell_U5_1();
      shell_U5_2();
      shell_U5_3();
      shell_U4_0();
      shell_U4_1();
      shell_U4_2();
      shell_U4_3();
      shell_J12_0();
      shell_J2_0();
      shell_JP4_0();
      shell_J8_0();
      shell_JP1_0();
      shell_J10_0();
      shell_J4_0();
      shell_J11_0();
      shell_U1_1();
      shell_U1_2();

    }
}
module mounted_component_pockets() {
  union() { 
    pocket_J7_0();
    pocket_J5_0();
    pocket_J9_0();
    pocket_J1_0();
    pocket_J3_0();
    pocket_J6_0();
    pocket_JP3_0();
    pocket_JP2_0();
    pocket_J13_0();
    pocket_U5_0();
    pocket_U5_1();
    pocket_U5_2();
    pocket_U5_3();
    pocket_U4_0();
    pocket_U4_1();
    pocket_U4_2();
    pocket_U4_3();
    pocket_J12_0();
    pocket_J2_0();
    pocket_JP4_0();
    pocket_J8_0();
    pocket_JP1_0();
    pocket_J10_0();
    pocket_J4_0();
    pocket_J11_0();
    pocket_U1_1();
    pocket_U1_2();
  }
}


module wide_line(start, end) {
    hull() {
        translate(start) cylinder(h=base_thickness, d=mesh_line_width);
        translate(end) cylinder(h=base_thickness, d=mesh_line_width);
    }
}


module base_solid() {
  translate([0,0,pcb_thickness+topmost_z]) {
    linear_extrude(base_thickness) {
      offset(r=pcb_holder_perimeter+pcb_gap) pcb_edge();
    }
  }
};
module base_mesh() {
  translate([0,0,pcb_thickness+topmost_z])
  intersection() { 
    union(){ 
        // delunay triangulated mesh
      wide_line([198.6,-155.8],[150.43,-153.9]);
      wide_line([150.43,-153.9],[117.249518,-155.8]);
      wide_line([117.249518,-155.8],[198.6,-155.8]);
      wide_line([157.65,-70.53],[198.6,-66.6]);
      wide_line([198.6,-66.6],[117.249518,-66.6]);
      wide_line([117.249518,-66.6],[157.65,-70.53]);
      wide_line([118.9088001,-119.5],[117.249518,-66.6]);
      wide_line([117.249518,-66.6],[117.249518,-155.8]);
      wide_line([117.249518,-155.8],[118.9088001,-119.5]);
      wide_line([174.78340000000003,-153.74],[150.43,-153.9]);
      wide_line([150.43,-153.9],[198.6,-155.8]);
      wide_line([198.6,-155.8],[174.78340000000003,-153.74]);
      wide_line([128.62,-70.5],[157.65,-70.53]);
      wide_line([157.65,-70.53],[117.249518,-66.6]);
      wide_line([117.249518,-66.6],[128.62,-70.5]);
      wide_line([157.65,-70.53],[137.35,-115.28999999999999]);
      wide_line([137.35,-115.28999999999999],[161.88000000000002,-126.0]);
      wide_line([161.88000000000002,-126.0],[157.65,-70.53]);
      wide_line([150.43,-153.9],[121.74000000000001,-153.9]);
      wide_line([121.74000000000001,-153.9],[117.249518,-155.8]);
      wide_line([117.249518,-155.8],[150.43,-153.9]);
      wide_line([121.1,-70.5],[128.62,-70.5]);
      wide_line([128.62,-70.5],[117.249518,-66.6]);
      wide_line([117.249518,-66.6],[121.1,-70.5]);
      wide_line([137.35,-115.28999999999999],[121.07000000000001,-105.14]);
      wide_line([121.07000000000001,-105.14],[121.085111,-111.709437]);
      wide_line([121.085111,-111.709437],[137.35,-115.28999999999999]);
      wide_line([121.07000000000001,-105.14],[118.9088001,-119.5]);
      wide_line([118.9088001,-119.5],[121.085111,-111.709437]);
      wide_line([121.085111,-111.709437],[121.07000000000001,-105.14]);
      wide_line([128.62,-70.5],[121.03,-87.35000099999999]);
      wide_line([121.03,-87.35000099999999],[157.65,-70.53]);
      wide_line([157.65,-70.53],[128.62,-70.5]);
      wide_line([121.03,-87.35000099999999],[137.35,-115.28999999999999]);
      wide_line([137.35,-115.28999999999999],[157.65,-70.53]);
      wide_line([157.65,-70.53],[121.03,-87.35000099999999]);
      wide_line([121.03,-87.35000099999999],[121.07000000000001,-105.14]);
      wide_line([121.07000000000001,-105.14],[137.35,-115.28999999999999]);
      wide_line([137.35,-115.28999999999999],[121.03,-87.35000099999999]);
      wide_line([121.1,-70.5],[121.03,-87.35000099999999]);
      wide_line([121.03,-87.35000099999999],[128.62,-70.5]);
      wide_line([128.62,-70.5],[121.1,-70.5]);
      wide_line([121.03,-87.35000099999999],[121.1,-70.5]);
      wide_line([121.1,-70.5],[117.249518,-66.6]);
      wide_line([117.249518,-66.6],[121.03,-87.35000099999999]);
      wide_line([118.9088001,-119.5],[121.03,-87.35000099999999]);
      wide_line([121.03,-87.35000099999999],[117.249518,-66.6]);
      wide_line([117.249518,-66.6],[118.9088001,-119.5]);
      wide_line([121.07000000000001,-105.14],[121.03,-87.35000099999999]);
      wide_line([121.03,-87.35000099999999],[118.9088001,-119.5]);
      wide_line([118.9088001,-119.5],[121.07000000000001,-105.14]);
      wide_line([157.65,-70.53],[186.62,-70.5]);
      wide_line([186.62,-70.5],[198.6,-66.6]);
      wide_line([198.6,-66.6],[157.65,-70.53]);
      wide_line([193.73,-82.08],[186.62,-70.5]);
      wide_line([186.62,-70.5],[157.65,-70.53]);
      wide_line([157.65,-70.53],[193.73,-82.08]);
      wide_line([195.0,-97.80499999999999],[193.73,-82.08]);
      wide_line([193.73,-82.08],[157.65,-70.53]);
      wide_line([157.65,-70.53],[195.0,-97.80499999999999]);
      wide_line([195.0,-97.80499999999999],[157.65,-70.53]);
      wide_line([157.65,-70.53],[161.88000000000002,-126.0]);
      wide_line([161.88000000000002,-126.0],[195.0,-97.80499999999999]);
      wide_line([193.73,-82.08],[195.0,-97.80499999999999]);
      wide_line([195.0,-97.80499999999999],[198.6,-66.6]);
      wide_line([198.6,-66.6],[193.73,-82.08]);
      wide_line([150.43,-153.9],[174.7834,-138.5]);
      wide_line([174.7834,-138.5],[161.88000000000002,-126.0]);
      wide_line([161.88000000000002,-126.0],[150.43,-153.9]);
      wide_line([174.78340000000003,-153.74],[174.7834,-138.5]);
      wide_line([174.7834,-138.5],[150.43,-153.9]);
      wide_line([150.43,-153.9],[174.78340000000003,-153.74]);
      wide_line([183.87660000000002,-153.74],[174.78340000000003,-153.74]);
      wide_line([174.78340000000003,-153.74],[198.6,-155.8]);
      wide_line([198.6,-155.8],[183.87660000000002,-153.74]);
      wide_line([194.4,-70.5],[193.73,-82.08]);
      wide_line([193.73,-82.08],[198.6,-66.6]);
      wide_line([198.6,-66.6],[194.4,-70.5]);
      wide_line([186.62,-70.5],[194.4,-70.5]);
      wide_line([194.4,-70.5],[198.6,-66.6]);
      wide_line([198.6,-66.6],[186.62,-70.5]);
      wide_line([194.4,-70.5],[186.62,-70.5]);
      wide_line([186.62,-70.5],[193.73,-82.08]);
      wide_line([193.73,-82.08],[194.4,-70.5]);
      wide_line([131.29999999999998,-126.0],[121.33,-126.0]);
      wide_line([121.33,-126.0],[121.74000000000001,-153.9]);
      wide_line([121.74000000000001,-153.9],[131.29999999999998,-126.0]);
      wide_line([121.33,-126.0],[118.9088001,-119.5]);
      wide_line([118.9088001,-119.5],[117.249518,-155.8]);
      wide_line([117.249518,-155.8],[121.33,-126.0]);
      wide_line([121.74000000000001,-153.9],[121.33,-126.0]);
      wide_line([121.33,-126.0],[117.249518,-155.8]);
      wide_line([117.249518,-155.8],[121.74000000000001,-153.9]);
      wide_line([118.9088001,-119.5],[128.62,-119.5]);
      wide_line([128.62,-119.5],[121.085111,-111.709437]);
      wide_line([121.085111,-111.709437],[118.9088001,-119.5]);
      wide_line([128.62,-119.5],[137.35,-115.28999999999999]);
      wide_line([137.35,-115.28999999999999],[121.085111,-111.709437]);
      wide_line([121.085111,-111.709437],[128.62,-119.5]);
      wide_line([128.62,-119.5],[131.29999999999998,-126.0]);
      wide_line([131.29999999999998,-126.0],[137.35,-115.28999999999999]);
      wide_line([137.35,-115.28999999999999],[128.62,-119.5]);
      wide_line([121.33,-126.0],[128.62,-119.5]);
      wide_line([128.62,-119.5],[118.9088001,-119.5]);
      wide_line([118.9088001,-119.5],[121.33,-126.0]);
      wide_line([128.62,-119.5],[121.33,-126.0]);
      wide_line([121.33,-126.0],[131.29999999999998,-126.0]);
      wide_line([131.29999999999998,-126.0],[128.62,-119.5]);
      wide_line([142.8,-149.38],[121.74000000000001,-153.9]);
      wide_line([121.74000000000001,-153.9],[150.43,-153.9]);
      wide_line([150.43,-153.9],[142.8,-149.38]);
      wide_line([142.8,-149.38],[131.29999999999998,-126.0]);
      wide_line([131.29999999999998,-126.0],[121.74000000000001,-153.9]);
      wide_line([121.74000000000001,-153.9],[142.8,-149.38]);
      wide_line([137.35,-115.28999999999999],[142.73,-126.0]);
      wide_line([142.73,-126.0],[161.88000000000002,-126.0]);
      wide_line([161.88000000000002,-126.0],[137.35,-115.28999999999999]);
      wide_line([131.29999999999998,-126.0],[142.73,-126.0]);
      wide_line([142.73,-126.0],[137.35,-115.28999999999999]);
      wide_line([137.35,-115.28999999999999],[131.29999999999998,-126.0]);
      wide_line([181.16,-124.9234],[177.6,-126.97000000000001]);
      wide_line([177.6,-126.97000000000001],[181.16,-134.0166]);
      wide_line([181.16,-134.0166],[181.16,-124.9234]);
      wide_line([177.6,-126.97000000000001],[181.16,-124.9234]);
      wide_line([181.16,-124.9234],[161.88000000000002,-126.0]);
      wide_line([161.88000000000002,-126.0],[177.6,-126.97000000000001]);
      wide_line([198.6,-66.6],[196.4,-124.9234]);
      wide_line([196.4,-124.9234],[198.6,-155.8]);
      wide_line([198.6,-155.8],[198.6,-66.6]);
      wide_line([196.4,-124.9234],[196.4,-134.0166]);
      wide_line([196.4,-134.0166],[198.6,-155.8]);
      wide_line([198.6,-155.8],[196.4,-124.9234]);
      wide_line([195.0,-97.80499999999999],[196.4,-124.9234]);
      wide_line([196.4,-124.9234],[198.6,-66.6]);
      wide_line([198.6,-66.6],[195.0,-97.80499999999999]);
      wide_line([196.4,-124.9234],[195.0,-97.80499999999999]);
      wide_line([195.0,-97.80499999999999],[195.0,-110.739999]);
      wide_line([195.0,-110.739999],[196.4,-124.9234]);
      wide_line([196.4,-134.0166],[194.4,-152.0]);
      wide_line([194.4,-152.0],[198.6,-155.8]);
      wide_line([198.6,-155.8],[196.4,-134.0166]);
      wide_line([194.4,-152.0],[183.87660000000002,-153.74]);
      wide_line([183.87660000000002,-153.74],[198.6,-155.8]);
      wide_line([198.6,-155.8],[194.4,-152.0]);
      wide_line([142.8,-149.38],[142.8,-131.60000000000002]);
      wide_line([142.8,-131.60000000000002],[131.29999999999998,-126.0]);
      wide_line([131.29999999999998,-126.0],[142.8,-149.38]);
      wide_line([142.8,-131.60000000000002],[142.73,-126.0]);
      wide_line([142.73,-126.0],[131.29999999999998,-126.0]);
      wide_line([131.29999999999998,-126.0],[142.8,-131.60000000000002]);
      wide_line([142.73,-126.0],[142.8,-131.60000000000002]);
      wide_line([142.8,-131.60000000000002],[161.88000000000002,-126.0]);
      wide_line([161.88000000000002,-126.0],[142.73,-126.0]);
      wide_line([142.8,-131.60000000000002],[150.43,-153.9]);
      wide_line([150.43,-153.9],[161.88000000000002,-126.0]);
      wide_line([161.88000000000002,-126.0],[142.8,-131.60000000000002]);
      wide_line([142.8,-131.60000000000002],[142.8,-149.38]);
      wide_line([142.8,-149.38],[150.43,-153.9]);
      wide_line([150.43,-153.9],[142.8,-131.60000000000002]);
      wide_line([177.6,-133.67999999999998],[174.7834,-138.5]);
      wide_line([174.7834,-138.5],[181.16,-134.0166]);
      wide_line([181.16,-134.0166],[177.6,-133.67999999999998]);
      wide_line([177.6,-126.97000000000001],[177.6,-133.67999999999998]);
      wide_line([177.6,-133.67999999999998],[181.16,-134.0166]);
      wide_line([181.16,-134.0166],[177.6,-126.97000000000001]);
      wide_line([174.7834,-138.5],[177.6,-133.67999999999998]);
      wide_line([177.6,-133.67999999999998],[161.88000000000002,-126.0]);
      wide_line([161.88000000000002,-126.0],[174.7834,-138.5]);
      wide_line([177.6,-133.67999999999998],[177.6,-126.97000000000001]);
      wide_line([177.6,-126.97000000000001],[161.88000000000002,-126.0]);
      wide_line([161.88000000000002,-126.0],[177.6,-133.67999999999998]);
      wide_line([196.4,-124.9234],[186.62,-119.5]);
      wide_line([186.62,-119.5],[181.16,-124.9234]);
      wide_line([181.16,-124.9234],[196.4,-124.9234]);
      wide_line([195.0,-97.80499999999999],[186.62,-119.5]);
      wide_line([186.62,-119.5],[195.0,-110.739999]);
      wide_line([195.0,-110.739999],[195.0,-97.80499999999999]);
      wide_line([186.62,-119.5],[195.0,-97.80499999999999]);
      wide_line([195.0,-97.80499999999999],[161.88000000000002,-126.0]);
      wide_line([161.88000000000002,-126.0],[186.62,-119.5]);
      wide_line([181.16,-124.9234],[186.62,-119.5]);
      wide_line([186.62,-119.5],[161.88000000000002,-126.0]);
      wide_line([161.88000000000002,-126.0],[181.16,-124.9234]);
      wide_line([183.8766,-138.5],[196.4,-134.0166]);
      wide_line([196.4,-134.0166],[181.16,-134.0166]);
      wide_line([181.16,-134.0166],[183.8766,-138.5]);
      wide_line([183.8766,-138.5],[194.4,-152.0]);
      wide_line([194.4,-152.0],[196.4,-134.0166]);
      wide_line([196.4,-134.0166],[183.8766,-138.5]);
      wide_line([194.4,-152.0],[183.8766,-138.5]);
      wide_line([183.8766,-138.5],[183.87660000000002,-153.74]);
      wide_line([183.87660000000002,-153.74],[194.4,-152.0]);
      wide_line([174.7834,-138.5],[183.8766,-138.5]);
      wide_line([183.8766,-138.5],[181.16,-134.0166]);
      wide_line([181.16,-134.0166],[174.7834,-138.5]);
      wide_line([194.4,-119.5],[196.4,-124.9234]);
      wide_line([196.4,-124.9234],[195.0,-110.739999]);
      wide_line([195.0,-110.739999],[194.4,-119.5]);
      wide_line([186.62,-119.5],[194.4,-119.5]);
      wide_line([194.4,-119.5],[195.0,-110.739999]);
      wide_line([195.0,-110.739999],[186.62,-119.5]);
      wide_line([194.4,-119.5],[186.62,-119.5]);
      wide_line([186.62,-119.5],[196.4,-124.9234]);
      wide_line([196.4,-124.9234],[194.4,-119.5]);
      wide_line([196.4,-134.0166],[196.4,-124.9234]);
      wide_line([196.4,-124.9234],[181.16,-134.0166]);
      wide_line([181.16,-134.0166],[196.4,-134.0166]);
      wide_line([196.4,-124.9234],[181.16,-124.9234]);
      wide_line([181.16,-124.9234],[181.16,-134.0166]);
      wide_line([181.16,-134.0166],[196.4,-124.9234]);
      wide_line([183.87660000000002,-153.74],[183.8766,-138.5]);
      wide_line([183.8766,-138.5],[174.78340000000003,-153.74]);
      wide_line([174.78340000000003,-153.74],[183.87660000000002,-153.74]);
      wide_line([183.8766,-138.5],[174.7834,-138.5]);
      wide_line([174.7834,-138.5],[174.78340000000003,-153.74]);
      wide_line([174.78340000000003,-153.74],[183.8766,-138.5]);
    }

    // ensure no peri lines go out of frame
    // tall shell supports must be included though
    linear_extrude(base_thickness)
      offset(r=pcb_holder_perimeter+pcb_gap)
        pcb_edge();
    }
}
module component_shell_support() {
  translate([0,0,pcb_thickness+topmost_z]) {
    union() {
      linear_extrude(base_thickness)
        peri_J7_0();
      linear_extrude(base_thickness)
        peri_J5_0();
      linear_extrude(base_thickness)
        peri_J9_0();
      linear_extrude(base_thickness)
        peri_J1_0();
      linear_extrude(base_thickness)
        peri_J3_0();
      linear_extrude(base_thickness)
        peri_J6_0();
      linear_extrude(base_thickness)
        peri_JP3_0();
      linear_extrude(base_thickness)
        peri_JP2_0();
      linear_extrude(base_thickness)
        peri_J13_0();
      linear_extrude(base_thickness)
        peri_U5_0();
      linear_extrude(base_thickness)
        peri_U5_1();
      linear_extrude(base_thickness)
        peri_U5_2();
      linear_extrude(base_thickness)
        peri_U5_3();
      linear_extrude(base_thickness)
        peri_U4_0();
      linear_extrude(base_thickness)
        peri_U4_1();
      linear_extrude(base_thickness)
        peri_U4_2();
      linear_extrude(base_thickness)
        peri_U4_3();
      linear_extrude(base_thickness)
        peri_J12_0();
      translate([0,0,max_z_J2_0-topmost_z])
        linear_extrude(base_thickness+topmost_z-max_z_J2_0)
          peri_J2_0();
      linear_extrude(base_thickness)
        peri_JP4_0();
      linear_extrude(base_thickness)
        peri_J8_0();
      linear_extrude(base_thickness)
        peri_JP1_0();
      linear_extrude(base_thickness)
        peri_J10_0();
      linear_extrude(base_thickness)
        peri_J4_0();
      linear_extrude(base_thickness)
        peri_J11_0();
      translate([0,0,max_z_U1_1-topmost_z])
        linear_extrude(base_thickness+topmost_z-max_z_U1_1)
          peri_U1_1();
      translate([0,0,max_z_U1_2-topmost_z])
        linear_extrude(base_thickness+topmost_z-max_z_U1_2)
          peri_U1_2();
    }
  }
}

module pcb_holder() {
  // solid between perimeter & outline
  // full height
  linear_extrude(topmost_z+pcb_thickness+base_thickness) {
    difference() {
      offset(r=pcb_holder_perimeter+pcb_gap) pcb_edge();
      offset(r=pcb_gap) pcb_edge();
    }
  }

  // solid between outline & overlap
  // PCB sits here, so that much lower height than
  // the full height
  translate([0,0,pcb_thickness]) {
    linear_extrude(topmost_z+base_thickness) {
      difference() {
        offset(r=pcb_gap) pcb_edge();
        offset(r=-pcb_overlap) pcb_edge();
      }
    }
  }

}

module pcb_perimeter_short() {
  translate([0,0,pcb_thickness+topmost_z-pcb_perimeter_height]) {
    linear_extrude(pcb_perimeter_height+base_thickness) {
      difference() {
        offset(r=pcb_holder_perimeter+pcb_gap) pcb_edge();
        offset(r=-pcb_overlap) pcb_edge();
      }
    }
  }
}

module peri_line(start, end, line_width) {
    hull() {
        translate(start) circle(d=line_width);
        translate(end) circle(d=line_width);
    }
}
module pcb_support_lips() {
  lip_width = max(pcb_gap+pcb_holder_perimeter, pcb_overlap)*1.2;
  tiny_dimension = 0.001;
  base_z =  pcb_thickness+topmost_z+base_thickness+2*tiny_dimension;
  translate([0,0,-tiny_dimension])
    linear_extrude(base_z)
      union() {
    peri_line([117.249518,-66.600000], [124.749518,-66.600000], lip_width);    peri_line([191.100000,-66.600000], [198.600000,-66.600000], lip_width);    peri_line([117.249518,-66.600000], [124.749518,-66.600000], lip_width);    peri_line([191.100000,-66.600000], [198.600000,-66.600000], lip_width);    peri_line([198.600000,-66.600000], [198.600000,-74.100000], lip_width);    peri_line([198.600000,-148.300000], [198.600000,-155.800000], lip_width);    peri_line([198.600000,-66.600000], [198.600000,-74.100000], lip_width);    peri_line([198.600000,-148.300000], [198.600000,-155.800000], lip_width);    peri_line([198.600000,-155.800000], [191.100000,-155.800000], lip_width);    peri_line([124.749518,-155.800000], [117.249518,-155.800000], lip_width);    peri_line([198.600000,-155.800000], [191.100000,-155.800000], lip_width);    peri_line([124.749518,-155.800000], [117.249518,-155.800000], lip_width);    peri_line([117.249518,-155.800000], [117.249518,-148.300000], lip_width);    peri_line([117.249518,-74.100000], [117.249518,-66.600000], lip_width);    peri_line([117.249518,-155.800000], [117.249518,-148.300000], lip_width);    peri_line([117.249518,-74.100000], [117.249518,-66.600000], lip_width);      }
}

// This _is_ the entire jig model. Structured such that
// you can individually check the parts
module complete_model() {
  difference() {
    union() {
      intersection() {
        pcb_support_lips();
        pcb_holder();
      };
      pcb_perimeter_short();
      if(base_is_solid==0) {
        base_mesh();
        } else {
        base_solid();
      }
      component_shell_support();
      mounted_component_shells();
    }
    mounted_component_pockets();
  }
}

orient_to_print=0;
if(orient_to_print == 1) {
  rotate([180,0,0])
    complete_model();
} else {
    complete_model();
}

// Stackup of the mesh
module stackup() {
  pcb_min_x = 117.249518;
  pcb_max_x = 198.6;
  sq_size = 5;
  sq_gap = sq_size*1.2;
  sq_x = pcb_min_x - sq_gap;

  color("green")
    translate([sq_x-sq_gap,0,0])
      linear_extrude(pcb_thickness)
        square(sq_size);

  color("blue")
    translate([sq_x-sq_gap,0,pcb_thickness])
      linear_extrude(shell_clearance)
        square(sq_size);

  color("red")
    translate([sq_x-sq_gap,0,pcb_thickness+shell_clearance])
      linear_extrude(topmost_z-shell_clearance)
        square(sq_size);

  color("white")
    translate([sq_x-sq_gap,0,pcb_thickness+topmost_z])
      linear_extrude(base_thickness)
        square(sq_size);
}

// Include the next line to visualize the "stack-up"
//stackup();

/*
# All values are in mm, unless explicitly
# stated otherwise
#
# Please see documentation for meaning of "gap",
# "overlap", and "perimeter"
#

[pcb]
thickness = 1.8 # First rev built at JLCPCB. The say thickness can go upto
                # 1.78 mm for 1.6mm boards.
tesellate_edge_cuts_curve = 0.1

# pcb holder is the overall jig generated
#
# It has a slot for the PCB to sit, with "lips"
#
[pcb_holder]
# gap
# JLC says +- 0.2mm board dimension difference, so we add 0.1 extra regular
# this gives us effectively 0.4mm. The printer can be off by +-0.1 mm as
# well, # so we use 0.3 mm
gap = 0.3
# overlap
# this is where the PCB will sit.  0.5 mm from the ideal PCB dimensions.
# could be increased a bit, but watch out for any components close to the
# edge. 0.5 mm is chosen as it is slightly lower that PCB manufacturer
# specified board # edge to copper clearance.
overlap = 0.5
perimeter = 1.6 # 1.6mm thick walls
base_perimeter_height = 2 # this length is additional to the base
lip_size = 15 # goes way beyond the through holes at the edge of the board
forced_lips = [] # not needed, rectangular PCB will generate corner supports

# For each through hole component (ref), the jig
# generator creates a "shell" that serves as a component
# holder for the ref in its exact location on the board
[component_holder]
shell_clearance = 1.0 # 1.0 clearance gap between PCB top side and shell plastic
shell_gap = 0.1 # components will fit in well
shell_thickness = 0.8 # 2 nozzle wide shell, good enough for this application

# Generic properties around component refs
[refs]
do_not_process = []
process_only_these = []

[jig_options]
style = "soldering_helper"
base_thickness = 1.0 # Z height of base
base_style = "mesh"

[base_mesh]
line_width = 1.6 # 4 nozzle width wide lines, just me checking lower limits!

*/
