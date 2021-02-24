Platform [] arr3= new Platform[5];    //Creating a new array of platforms for this level.
Spike [] Sp3= new Spike[8];           //Creating a new array of spikes for this level.
boolean spi3= true;                   //This boolean states that there are spikes on this level.

void L3_Spikes (Spike [] Sp3)
{
  Sp3[0].x1= 200;                    //The spike object contain the (x,y) coordinates for the three points required to make the triangles in the triangle function.
  Sp3[0].y1= 750;
  Sp3[0].x2= 215;
  Sp3[0].y2= 710;
  Sp3[0].x3= 230;
  Sp3[0].y3= 750;

  Sp3[1].x1= 400;
  Sp3[1].y1= 750;
  Sp3[1].x2= 415;
  Sp3[1].y2= 710;
  Sp3[1].x3= 430;
  Sp3[1].y3= 750;

  Sp3[2].x1= 430;
  Sp3[2].y1= 750;
  Sp3[2].x2= 445;
  Sp3[2].y2= 710;
  Sp3[2].x3= 460;
  Sp3[2].y3= 750;

  Sp3[3].x1= 610;
  Sp3[3].y1= 750;
  Sp3[3].x2= 620;
  Sp3[3].y2= 710;
  Sp3[3].x3= 630;
  Sp3[3].y3= 750;

  Sp3[4].x1= 630;
  Sp3[4].y1= 750;
  Sp3[4].x2= 645;
  Sp3[4].y2= 710;
  Sp3[4].x3= 660;
  Sp3[4].y3= 750;

  Sp3[5].x1= 660;
  Sp3[5].y1= 750;
  Sp3[5].x2= 670;
  Sp3[5].y2= 710;
  Sp3[5].x3= 680;
  Sp3[5].y3= 750;

  Sp3[6].x1= 450;
  Sp3[6].y1= 500;
  Sp3[6].x2= 465;
  Sp3[6].y2= 460;
  Sp3[6].x3= 480;
  Sp3[6].y3= 500;

  Sp3[7].x1= 420;
  Sp3[7].y1= 500;
  Sp3[7].x2= 435;
  Sp3[7].y2= 460;
  Sp3[7].x3= 450;
  Sp3[7].y3= 500;

  CreateSpikes(Sp3);                        //The array with the all of the values of all of the spikes is sent to another function that actually creates the
}                                           //spikes onto the screen.

void Level_3 (Platform [] L3)
{ 
  L3[0].x= -50;  //main platform
  L3[0].y= 750;
  L3[0].w= 1050;
  L3[0].h= 55;

  L3[1].x= 850;
  L3[1].y= 650;
  L3[1].w= 250;
  L3[1].h= 30;

  L3[2].x= 200;
  L3[2].y= 500;
  L3[2].w= 500;
  L3[2].h= 30;

  L3[3].x= 750;
  L3[3].y= 550;
  L3[3].w= 50;
  L3[3].h= 30;

  L3[4].x= 200;
  L3[4].y= 400;
  L3[4].w= 100;
  L3[4].h= 30;
  
  textSize(32);
  fill(256, 256, 256);
  text("Spikes are Dangerous!", 300, 300);   //This text hints the player to stay away from the spikes. It is displayed onto the screen making it easy for the 
                                             //player to read it.
  CreatePlatform(L3);
}

End E3= new End();
End Level_E3 (End E)
{
  E.ex= 250;
  E.ey= 365;
  E.ew= 20;
  E.eh= 20;

  CreateEllipse(E);
  return E;
}