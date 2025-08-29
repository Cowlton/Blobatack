

if time <= timeToSpin{
Angle += orbit_speed;

// Keep the angle within 0-360 range (optional)
Angle = Angle mod 360;
radius += 15 - time

// Calculate new position using sine and cosine
x = origin_x + lengthdir_x(radius, Angle);
y = origin_y + lengthdir_y(radius, Angle);
time += 1
}else{
Angle += orbit_speed;

// Keep the angle within 0-360 range (optional)
Angle = Angle mod 360;
radius -= 2
orbit_speed += 0.35;
// Calculate new position using sine and cosine
x = origin_x + lengthdir_x(radius, Angle);
y = origin_y + lengthdir_y(radius, Angle);
}