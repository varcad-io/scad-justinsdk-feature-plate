use <@justinsdk/src/starburst.scad>
use <@justinsdk/src/hexagons.scad>

hex_radius = is_undef(hex_radius) ? 3.2 : hex_radius;
hex_spacing = is_undef(hex_spacing) ? 0.8 : hex_spacing;
hex_count = is_undef(hex_count) ? 3 : hex_count;
plate_height = is_undef(plate_height) ? 3 : plate_height;
show_crown = is_undef(show_crown) ? true : show_crown;
crown_outer_radius = is_undef(crown_outer_radius) ? 10 : crown_outer_radius;
crown_inner_radius = is_undef(crown_inner_radius) ? 5 : crown_inner_radius;
crown_points = is_undef(crown_points) ? 6 : crown_points;
crown_height = is_undef(crown_height) ? 6 : crown_height;

union() {
  linear_extrude(height = plate_height)
    hexagons(hex_radius, hex_spacing, hex_count);

  if(show_crown)
    translate([0, 0, plate_height])
      starburst(crown_outer_radius, crown_inner_radius, crown_points, crown_height);
}
