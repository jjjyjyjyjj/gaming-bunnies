draw_self(); // draw the sprite

// Update the frame based on health
image_index = 3 - clamp(global.health, 0, 3);