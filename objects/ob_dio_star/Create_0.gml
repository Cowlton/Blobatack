/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();





    if (gamepad_is_connected(0))
    {
	dialog.add(bob, "Use the Right stick to aim")
	dialog.add(bob, "Right triger is attak")
	dialog.add(bob, "Left stick is how you move kill the enemies befor you touch them")
	dialog.add(bob, "Defet all enemies and touch the finish line to win")
		
        // do stuff with pad "i"
    }else if !gamepad_is_connected(0){
dialog.add(bob, "Use arro keys to aim")
dialog.add(bob, "Space to attak")
dialog.add(bob, "WASD to move kill the enemies befor you touch them")
dialog.add(bob, "Defet all enemies and touch the finish line to win")
}


	
