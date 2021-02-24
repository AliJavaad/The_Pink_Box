class Player
{
  PImage image;
  PVector position;        //This is the class that is used for the player. The PImage is for the sprite to be loaded. The PVector is the position vector
  float direction;         //for the player and keeps track of its position on the screen. The direction, jumpspeed, and walkspeed are all constants. The second
  PVector velocity;        //PVector is for the velocity. It keeps track of the player's direction and movement.
  float jumpspeed;
  float walkspeed;
}

Player box;                //Creating a new player called box.
float left;                //Setting the variables for user interaction. These will be used int the "Controls" tab.
float right;
float up;
float down;
float gravity= 1;         //This is the velocity/acceleration of gracity that acts whenever the box is in the air.
float hHeight= 28.5;      //Refers to half the height and width of the box sprite. Since the collisions are based on the box's center, we need these to help
float hWidth= 23.5;       //offset the collisions to make them act in more realistic manner.

void updatebox(Platform[] Pl, End El, boolean ySp, Spike [] Sp)  //This is the main function in this game. It updates the box position and velocity every time the
                                                                 //draw function repeats. It takes in the parameters of an array of Platforms, an End Ellipse,
                                                                 //a boolean that states whether the level has spike or not, and finally an array of Spikes.
{                                                                //The values passed are linked to which level that the player is on. (The 'c' value in draw())

  if (box.position.y > g)           //This states that if the y position of the box is below the ground(main platform/g value) it should return to the ground
  {                                 //(the g value).
    box.position.y = g;
  }   
  if (box.position.y < g)           //This states that if the box is above the ground value, gravity should be applied. Gravity adds one to the y-value
  {                                 //after each run through of the if statement until it is eventually at ground level.
    box.velocity.y += gravity;
  } else                            //This says that no velocity in the y-direction is applied when the box is on the ground.
  {
    box.velocity.y=0;
  }
  if (box.position.y >= g && up != 0)  //This just states that if the box is on the ground and the up key is pressed, the box velocity becomes the 
  {                                    //negative jumpspeed(so that it can move up the screen).
    box.velocity.y = -box.jumpspeed;
  }
  
  box.velocity.x = box.walkspeed*(left + right); //The box velocity in the x direction is just the walkspeed multiplied by the constants
                                                 //added together (can be either 1, 0, or -1) and multiplied with the walkspeed.
                                                 
  PVector nextPosition = new PVector(box.position.x, box.position.y);    //A new vector is created to keep track of the next position that the box is moving to.
  nextPosition.add(box.velocity);                                        //It takes the value of the box's x and y position and adds to it the velocity of the box, 
                                                                         //thus keeping track of the next position that the box is moving into. 
  
  float offset=0;                                                        
  if (nextPosition.x > offset && nextPosition.x < (width-offset))        //This code is to prevent the box from moving off of the screen.
  {
    box.position.x = nextPosition.x;
  }
  if (nextPosition.y > offset && nextPosition.y < (height - offset))
  {
    box.position.y = nextPosition.y;
  }

  //COLLISIONS 
  for (int i=0; i<Pl.length; i++)
  {
    
    //Hitting the Bottom of a Platform
    if (nextPosition.x > (Pl[i].x - hWidth) &&             //This statement is saying that if the next position in the x direction is greater than the platform's
      nextPosition.x < (Pl[i].x + Pl[i].w +  hWidth) &&    //x-cordinate and its x-cordinate plus the width of the platform, and if the next position in the 
      nextPosition.y < (Pl[i].y + Pl[i].h + hHeight) &&    //y direction is between the height of the platform plus the y coordinate and the y coordinate itself,
      nextPosition.y > (Pl[i].y - hHeight))                //then the box velocity in the y direction becomes the negative of what it was and the velocity in the 
    {                                                      //x direction stops momentarily. Wen the velocity in the y direction negates itself, it is "pushed"
      box.velocity.y= -box.velocity.y;                     //back down to another platform, making it seem like it has hit the top of the platform.
      box.velocity.x= 0;
    }
    
    //Standing on top of a platform
    if (nextPosition.x > (Pl[i].x - hWidth) &&           //When the next position in the x direction is between the length of the platform and its next position in
      nextPosition.x < (Pl[i].x + Pl[i].w + hWidth) &&   //the y direction is smaller (physically higher) than the y coordinate of the platform, then the value of
      nextPosition.y < (Pl[i].y - hHeight + 15.1))       //g (the ground) is changed to the y coordinate (top) of the platform offset by the height of the sprite.
    {                                                    //Due to the fact that platforms can be above/beneath one another and that the only restriction on the box's
      g= (Pl[i].y - hHeight);                            //y value is that it must be higher than the y value of the platform, errors can occur. To prevent this from
    }                                                    //happening, when creating a level the array of platforms must be created in order of highest to lowest.
                                                         //(ie. from the physically lowest platform to the physically highest platform.
                                                         
    //Collision with the left side of a platform
    if (nextPosition.x > (Pl[i].x - hWidth) &&            //When the next position in the x direction is equal to the x coordinate of the platform and the next
      nextPosition.x < (Pl[i].x  - hWidth + 5.1) &&       //position in the y direction is between the height of the platform, the box velocity in the y direction
      nextPosition.y < (Pl[i].y + Pl[i].h + hHeight) &&   //becomes zero and the box position in the x direction becomes the value of the x coordinate of the 
      nextPosition.y > (Pl[i].y - hHeight))               //left side of the platform. When this happens, the box stops moving and gravity is allowed to pull the
    {                                                     //box down onto the lower platform.
      box.velocity.y= 0;
      box.position.x= Pl[i].x - hWidth;
    }
    
    //Collision with the right side of the platform
    if (nextPosition.x > (Pl[i].x + Pl[i].w + hWidth - 5.1) &&   //When the next position in the x direction is equal to the x coordinate of the platform plus
      nextPosition.x < (Pl[i].x + Pl[i].w  + hWidth) &&          //length and the next position in the y direction is between the height of the platform, the 
      nextPosition.y < (Pl[i].y + Pl[i].h + hHeight) &&          //box velocity in the y direction becomes zero and the box position in the x direction becomes
      nextPosition.y > (Pl[i].y - hHeight))                      //the value of the x coordinate of the left side of the platform plus the length of the platform.
    {                                                            //This has the same effects as when the box hits the left side of the platform.
      box.velocity.y= 0;
      box.position.x= Pl[i].x + Pl[i].w + hWidth;
    }
  }
  
  //Collision with the Spikes
  if (ySp)                      //If there are spikes on this level, run this code.
  {
    for (int i=0; i<Sp.length; i++)
    {
      if (nextPosition.x > (Sp[i].x1 - hWidth) &&   //This statement essentially creates a invisible square around the triangle/spike using the points from its
        nextPosition.x < (Sp[i].x3 + hWidth) &&     //base and height and says that if the next position in any direction comes in contact with the square
        nextPosition.y > (Sp[i].y2 - hHeight) &&    //set the box's position in the x direction to zero, and the position in the y direction to the ground level.
        nextPosition.y < (Sp[i].y1 + hHeight))      //By doing so, the level is reset for the player and they must try again. 
      {
        box.position.x= 0;
        g= 722;
      }
    }
  }

  //Changing Levels
  if (nextPosition.x > (El.ex-(El.ew/2)) &&   //This creates a square around the golden orb using its radius and the coordiante for its center. If the center of the
    nextPosition.x < (El.ex+(El.ew/2)) &&     //box comes into contact with this square, the value of c is incremented by one and the position of the box is set
    nextPosition.y > (El.ey-(El.eh/2)) &&     //back to the beginning. When c is incremented the, the next level/screen is called and new values are passed to the
    nextPosition.y < (El.ey+(El.eh/2)))       //main updatebox function.
  {
    c++;
    box.position.x= 0;
    g= 722;
  }

  pushMatrix();                                   //This allows for the animation to run smoothly.
  translate(box.position.x, box.position.y);      //The box is translated to the positions that it is moving to and each time the image is redrawn and scaled
  scale(box.direction, 1);                        //to keep the transition smooth aswell.
  imageMode(CENTER);                              //The image is based on its center coordinates and therefore must be offset in order to make collisions
  image(box.image, 0, 0);                         //seem natural.
  popMatrix();
}