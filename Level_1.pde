Platform [] arr1= new Platform[4];                    //Creating a new array for the platforms in the first level.
boolean spi1=false;                                   //This boolean is saying that there are no spikes on this level.

void Level_1 (Platform [] L1)
{
  L1[0].x= -50;  //main platform
  L1[0].y= 750;
  L1[0].w= 1050;                                     //Each platform is set with the class Platform. It contains the (x, y) coordinates and the height and width of each
  L1[0].h= 55;                                       //platform. 

  L1[1].x= 600;
  L1[1].y= 640;
  L1[1].w= 300;
  L1[1].h= 30;

  L1[2].x= 420;
  L1[2].y= 560;
  L1[2].w= 100;
  L1[2].h= 30;

  L1[3].x= -50;
  L1[3].y= 500;
  L1[3].w= 350;
  L1[3].h= 30;

  textSize(32);
  fill(256, 256, 256);                               //The controls are integrated into the game so they do not need to be in a seperate file. They are also very
  text("Use the Arrow Keys to Move", 300, 300);      //very simple. This displays the basic controls and goal of the game.
  text("Get the Golden Orb!", 300, 350);

  CreatePlatform(L1);                             //The array with the all of the values of all of the platforms is sent to another function that actually creates the 
}                                                 //rectangles and displays them on screen.

End E1= new End();            //Asking for memory for a new End object.
End Level_E1 (End E)
{
  E.ex= 50;                  //The (x,y) coordinates and the width and height of the ellipse are recorded in this object. Like the platforms, it is sent to another
  E.ey= 465;                 //function that displays the ellipse onto the screen as the "Golden Orb".
  E.ew= 20;
  E.eh= 20;
  
  CreateEllipse(E);          //The ellipse object is then sent to another function that actually creates the shape of the object and displays it onto the screen
  return E;
}