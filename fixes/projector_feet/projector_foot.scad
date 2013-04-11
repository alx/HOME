cylinder_height = 22;
cylinder_size = 15;
cylinder_wall = 5;

flap_width = 23;
flap_height = 2;

hole_size = 2;
hole_position = 25;

hollow_height = cylinder_height * 4;
hollow_size = cylinder_size - cylinder_wall;

// Horizontal flap
difference() {
  difference() {
    translate(v = [0, 0, flap_height / 2]) cube(size = [flap_width * 3, flap_width, flap_height], center = true);
    translate(v = [hole_position, 0, flap_height / 2]) cylinder(h=20, r=hole_size, center = true);
    translate(v = [-hole_position, 0, flap_height / 2]) cylinder(h=20, r=hole_size, center = true);
  }
  cylinder(h=hollow_height, r=hollow_size, center = true);
}

// Third leg flap
difference() {
  difference() {
    translate(v = [0, flap_width / 2, flap_height / 2]) cube(size = [flap_width, flap_width * 2, flap_height], center = true);
	translate(v = [0, hole_position, flap_height / 2]) cylinder(h=20, r=hole_size, center = true);
  }
  cylinder(h=20, r=hollow_size, center = true);
}

// Main cylinder
difference() {
  cylinder(h=cylinder_height, r=cylinder_size);
  cylinder(h=hollow_height, r=hollow_size, center = true);
}