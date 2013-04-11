difference() {
  difference() {
    translate(v = [0, 0, 1]) cube(size = [60, 20, 2], center = true);
    translate(v = [22, 0, 1]) cylinder(h=20, r=2, center = true);
    translate(v = [-22, 0, 1]) cylinder(h=20, r=2, center = true);
  }
  cylinder(h=20, r=15, center = true);
}

difference() {
  difference() {
    translate(v = [0, 10, 1]) cube(size = [20, 40, 2], center = true);
	translate(v = [0, 22, 1]) cylinder(h=20, r=2, center = true);
  }
  cylinder(h=20, r=15, center = true);
}

difference() {
  cylinder(h=22, r=15);
  cylinder(h=80, r=10, center = true);
}