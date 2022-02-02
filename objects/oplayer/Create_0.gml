/// @description Insert description here
// You can write your code in this editor

//xSpeed is how many pixels the player will move each frame
xSpeed = 4;
//what direction the player is moving. 1 = to the right -1 = to the left, 0 = not moving 
xDirection = 0;

//multiply speed * direction
xvector = xSpeed * xDirection;

//gravity
grv = .1;

xvector = 0;
//check to see if we move xVector pixels (4),
//does this colllide with a wall?
//if it does collide, do not move all 4 pixels.
if place_meeting(x + xDirection, y, owall))
    {
        //as lomg as the next pixel is empty, move there
         //! means "not"
          while (!place_meeting(x + xDirection, y, owall))
          {

               //move one pixel
               x = x + xDirection;

		  }
          //make sure xVector won't move us
          xVector = 0;
	}

x = x + xVector;

if place_meeting(x, y+ yVector, owall)
    {
        //as lomg as the next pixel is empty, move there
         //! means "not"
          while (!place_meeting(x, y+sign(yVector), owall))
          {

            //move one pixel
             //if yVector is positive then sign(yVector) = 1
			 //if yVector is negitive then sign(yVector) = 1
			y = y+sign(yVector);
		  }
          //make sure xVector won't move us
          yVector = 0;
	} 
y = y + yVector;

//to jump we need to check 2 thing,
//first check to see if the pixel below us is ground
//second, check to see if the the jump button was pressed

if place_meeting(x, y+1, owall) and (jump))
{
yVector = jumpforce;
}
if place_meeting(x, y,ocoin))