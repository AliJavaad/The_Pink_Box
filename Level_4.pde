Platform [] arr4= new Platform[13];               //Creating a new array of platforms for this level.
Spike [] Sp4= new Spike[8];                       //Creating a new array of spikes for this level.
boolean spi4= true;                               //This boolean states that there are spikes on this level.

void L4_Spikes (Spike [] Sp4)
{
  Sp4[0].x1= 250;                                 //Same aspects as Level 3
  Sp4[0].y1= 750;
  Sp4[0].x2= 265;
  Sp4[0].y2= 710;
  Sp4[0].x3= 280;
  Sp4[0].y3= 750;

  Sp4[1].x1= 280;
  Sp4[1].y1= 750;
  Sp4[1].x2= 295;
  Sp4[1].y2= 710;
  Sp4[1].x3= 310;
  Sp4[1].y3= 750;

  Sp4[2].x1= 430;
  Sp4[2].y1= 750;
  Sp4[2].x2= 445;
  Sp4[2].y2= 710;
  Sp4[2].x3= 460;
  Sp4[2].y3= 750;

  Sp4[3].x1= 610;
  Sp4[3].y1= 510;
  Sp4[3].x2= 620;
  Sp4[3].y2= 470;
  Sp4[3].x3= 630;
  Sp4[3].y3= 510;

  Sp4[4].x1= 630;
  Sp4[4].y1= 510;
  Sp4[4].x2= 645;
  Sp4[4].y2= 470;
  Sp4[4].x3= 660;
  Sp4[4].y3= 510;

  Sp4[5].x1= 660;
  Sp4[5].y1= 510;
  Sp4[5].x2= 670;
  Sp4[5].y2= 470;
  Sp4[5].x3= 680;
  Sp4[5].y3= 510;

  Sp4[6].x1= 315;
  Sp4[6].y1= 270;
  Sp4[6].x2= 330;
  Sp4[6].y2= 230;
  Sp4[6].x3= 345;
  Sp4[6].y3= 270;

  Sp4[7].x1= 345;
  Sp4[7].y1= 270;
  Sp4[7].x2= 360;
  Sp4[7].y2= 230;
  Sp4[7].x3= 375;
  Sp4[7].y3= 270;

  CreateSpikes(Sp4);
}

void Level_4 (Platform [] L4)
{ 
  L4[0].x= -50;  //main platform
  L4[0].y= 750;
  L4[0].w= 1050;
  L4[0].h= 55;

  L4[1].x= 60;
  L4[1].y= 650;
  L4[1].w= 100;
  L4[1].h= 60;

  L4[2].x= 110;
  L4[2].y= 590;
  L4[2].w= 50;
  L4[2].h= 60;

  L4[3].x= 160;
  L4[3].y= 530;
  L4[3].w= 50;
  L4[3].h= 60;

  L4[4].x= 210;
  L4[4].y= 470;
  L4[4].w= 100;
  L4[4].h= 60;

  L4[5].x= 260;
  L4[5].y= 410;
  L4[5].w= 100;
  L4[5].h= 60;

  L4[6].x= 60;
  L4[6].y= 340;
  L4[6].w= 100;
  L4[6].h= 60;

  L4[7].x= 60;
  L4[7].y= 250;
  L4[7].w= 50;
  L4[7].h= 60;

  L4[8].x= 530;
  L4[8].y= 510;
  L4[8].w= 470;
  L4[8].h= 30;

  L4[9].x= 330;
  L4[9].y= 320;
  L4[9].w= 30;
  L4[9].h= 90;

  L4[10].x= 60;
  L4[10].y= 100;
  L4[10].w= 10;
  L4[10].h= 150;

  L4[11].x= 260;
  L4[11].y= 270;
  L4[11].w= 500;
  L4[11].h= 30;
  
  L4[12].x= 600;
  L4[12].y= 180;
  L4[12].w= 400;
  L4[12].h= 30;

  CreatePlatform(L4);
}

End E4= new End();
End Level_E4 (End E)
{
  E.ex= 190;
  E.ey= 715;
  E.ew= 20;
  E.eh= 20;

  CreateEllipse(E);
  return E;
}