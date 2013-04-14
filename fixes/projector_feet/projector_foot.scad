àcylinder_height = 28;
cylinder_size = 10;
cylinder_wall = 4;

flap_width = 15;
flap_height = 1;

hole_size = 2;
hole_position = 17;

hollow_height = cylinder_height * 4;
hollow_size = cylinder_size - cylinder_wall;

// Horizontal flap
difference() {
  difference() {
    translate(v = [0, 0, flap_height / 2]) cube(size = [flap_width * 3, flap_width, flap_height], center = true);
    translate(v = [hole_position, 0, flap_height / 2]) cylinder(h=20, r=hole_size, center = true, $fn = 100);
    translate(v = [-hole_position, 0, flap_height / 2]) cylinder(h=20, r=hole_size, center = true, $fn = 100);
  }
  cylinder(h=hollow_height, r=hollow_size, center = true, $fn = 100);
}

// Main cylinder
difference() {
  cylinder(h=cylinder_height, r=cylinder_size, $fn = 100);
  cylinder(h=hollow_height, r=hollow_size, center = true, $fn = 100);
}