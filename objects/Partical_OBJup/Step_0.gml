randomize()
if Ready = false{
var xRa = random_range(x - 20, x + 20)
var yRa = random_range(y + 2, y + 15)
move_towards_point(xRa,yRa,random_range(5,20))
dest = random_range(2,7)
Ready = true
}
dest -= 1
if dest <=1{
instance_destroy()
}
