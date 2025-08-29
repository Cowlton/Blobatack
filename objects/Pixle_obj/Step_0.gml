

// Calculate pixel-snapped position from angle and radius
var px = pixlePlace.x
var py = pixlePlace.y

// Snap final position to nearest 4x4 grid
x = floor(px / 4 + 0.5) * 4;
y = floor(py / 4 + 0.5) * 4;
