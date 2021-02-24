Platform [] arr2= new Platform[10];      //Creating a new array of platforms for this level.
boolean spi2= false;                     //This boolean is saying that there are no spikes on this level.

void Level_2 (Platform [] L2)
{
  L2[0].x= -50;  //main platform                               //Same aspects as Level 1
  L2[0].y= 750;
  L2[0].w= 1050;
  L2[0].h= 55;

  L2[1].x= 200;
  L2[1].y= 640;
  L2[1].w= 100;
  L2[1].h= 30;

  L2[2].x= 400;
  L2[2].y= 560;
  L2[2].w= 100;
  L2[2].h= 30;

  L2[3].x= 600;
  L2[3].y= 480;
  L2[3].w= 100;
  L2[3].h= 30;

  L2[4].x= 800;
  L2[4].y= 400;
  L2[4].w= 100;
  L2[4].h= 30;

  L2[5].x= 600;
  L2[5].y= 320;
  L2[5].w= 100;
  L2[5].h= 30;
  
  L2[6].x= 600;
  L2[6].y= 320;
  L2[6].w= 100;
  L2[6].h= 30;
  
  L2[7].x= 400;
  L2[7].y= 240;
  L2[7].w= 100;
  L2[7].h= 30;
  
  L2[8].x= 200;
  L2[8].y= 160;
  L2[8].w= 100;
  L2[8].h= 30;
  
  L2[9].x= 0;
  L2[9].y= 80;
  L2[9].w= 100;
  L2[9].h= 30;

  CreatePlatform(L2);
}

End E2= new End();
End Level_E2 (End E)
{
  E.ex= 50;
  E.ey= 50;
  E.ew= 20;
  E.eh= 20;
  
  CreateEllipse(E);
  return E;
}