randomize()
if Ready = false{
var xRa = random_range(x - 20, x + 20)
var yRa = random_range(y - 20, y + 20)
move_towards_point(xRa,yRa,10)
dest = random_range(2,10)
Ready = true
}
dest -= 1
if dest <=1{
instance_destroy()
}
x = floor(x / 4 + 0.5) * 4;
y = floor(y / 4 + 0.5) * 4;
