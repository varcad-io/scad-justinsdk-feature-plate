use <@justinsdk/src/starburst.scad>
use <@justinsdk/src/hexagons.scad>

union() {
  linear_extrude(height = 3)
    hexagons(3.2, 0.8, 3);

  translate([0, 0, 3])
    starburst(10, 5, 6, 6);
}
