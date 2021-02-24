//GAME REQUIRES MINIM LIBRARY TO BE PLAYED


import ddf.minim.*;
Minim minim;                 //For the background music. Calling the minim library.
AudioPlayer au_player1;

//Global Variables
float g= 722;       //Ground level (the height of the main platform - the height of the box)
int c=0;            //Level counter
int t=0;            //Score counter

void setup()
{
  minim = new Minim(this) ;
  au_player1 = minim.loadFile("MozartPiano.mp3") ;     //Playing the music when setup is read. It continues throughout the entire game.
  au_player1.play();
  size(1000, 800);
  box= new Player();                              //Asking for memory for the object box of type Player.
  box.image= loadImage("box.png");                //For the sprite. Loading the image and setting a new vector for the box to
  box.position= new PVector(5, g);                //move around. The intitial direction is the box facing left.
  box.direction= 1;
  box.velocity= new PVector(0, 0);                //Asking for new memory for the velocity vector and setting the jumpspeed and
  box.jumpspeed= 15;                              //walkspeed constants. This serves as an initial steup for the object, which can be later changed to account
  box.walkspeed= 5;                               //for movement.
  for (int i=0; i<arr1.length; i++)
  {
    arr1[i]= new Platform();
  }
  for (int i=0; i<arr2.length; i++)
  {
    arr2[i]= new Platform();                     //Asking for memory for the arrays of platforms and spikes.
  }
  for (int i=0; i<arr3.length; i++)
  {
    arr3[i]= new Platform();
  }
  for (int i=0; i<Sp3.length; i++)
  {
    Sp3[i]= new Spike();
  }
  for (int i=0; i<arr4.length; i++)
  {
    arr4[i]= new Platform();
  }
  for (int i=0; i<Sp4.length; i++)
  {
    Sp4[i]= new Spike();
  }
}

void draw()
{
  background(0);                                               //Redraws the background whenever the draw function starts. This prevents multiple images from piling up.
  if (c == 0)
  {
    StartScreen();
    t= Click(t);
  }
  if (c == 1)
  {
    Level_1(arr1);
    Level_E1(E1);
    updatebox(arr1, E1, spi1, null);                           //The 'c' value is a counter. When set to 0, it loads the start screen and if certain conditions are met
    t= Score(t);                                               //(in this case when the mouse clicks the start button) the ++ operator increases the c value by 1
  }                                                            //thus causing the next stage/level to load. This is repeated at every stage. At the end menu, if the
  if (c == 2)                                                  //"Try Again?" button is clicked, the vaulue of c is reset to one.
  {                                                            //Each if statement calls for functions to set up the levels that relate to the c value and pass the
    Level_2(arr2);                                             //global arrays as arguments. The value "null" that is sent when c= 1 and 2 means that there is no
    Level_E2(E2);                                              //value of this kind that is meant to be passed. Therefore the function can still operate without
    updatebox(arr2, E2, spi2, null);                           //having any value of this kind passed on to it.
    t= Score(t);                                               //The value of t is global and is used in every if statement in the draw function. When c=0, the 
  }                                                            //t value is set to 0 as well. When c= 1/2/3/4 the t value increases by one each time
  if (c == 3)                                                  //the draw function runs through the code. Due to this, the lower the t value the better the run.
  {
    L3_Spikes(Sp3);
    Level_3(arr3);
    Level_E3(E3);
    updatebox(arr3, E3, spi3, Sp3);
    t= Score(t);
  }
  if (c == 4)
  {
    L4_Spikes(Sp4);                     //This creates the spikes on the level.
    Level_4(arr4);                      //This creates the platforms on the level.
    Level_E4(E4);                       //This creates the golden orb on the level.
    updatebox(arr4, E4, spi4, Sp4);     //This updates the movement of the box. It accounts for the collisions and interactions with other objects.
    t= Score(t);                        //This updates the score.
  }
  if (c == 5)
  {
    EndScreen(t);
    t= Click(t);
  }
  frameRate(40);
}
