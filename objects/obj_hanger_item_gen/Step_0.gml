// Movement
x-= 2; // moves left at 4px/frame

// Destroy if it reaches the left area
if (x < 200){
	global.health -= 1;
	instance_destroy();
}