// Interaction ranges and scale settings
var range = 12;
var min_scale = 1;
var hover_scale = 1.05;
var pressed_scale = 0.9;

var scale_spd = 0.15;

// Check if mouse is hovering
var is_hover = distance_to_point(mouse_x, mouse_y) <= range;

// Check if pressed while hovering
var is_pressed = is_hover && mouse_check_button(mb_left);

// Determine target scale
var goal_scale = min_scale;
if (is_hover) goal_scale = hover_scale;
if (is_pressed) goal_scale = pressed_scale;

// Smoothly scale to goal
image_xscale = lerp(image_xscale, goal_scale, scale_spd);
image_yscale = lerp(image_yscale, goal_scale, scale_spd);

// Optional: change frame if using subimages
image_index = is_hover;
