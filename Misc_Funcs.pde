void CreatePlatform (Platform [] Pl)
{
  fill(256, 256, 256);
  for (int i=0; i<Pl.length; i++)
  {
    rect(Pl[i].x, Pl[i].y, Pl[i].w, Pl[i].h);          //This is the funation that creates the rectangles/platforms and displays them onto the screen.
  }                                                    //The fill function gives the platforms a white colour, which makes them easy to see with the
}                                                      //dark background.

void CreateEllipse (End El)
{
  fill(242, 255, 0);                            //This is the funation that creates the ellipse/orb and display it onto the screen. The fill function is there 
  ellipse(El.ex, El.ey, El.ew, El.eh);          //to give the orb its yellow/golden colour.
}

void CreateSpikes (Spike [] Sp)
{
  fill(200, 200, 200);
  for (int i=0; i<Sp.length; i++)
  {
    triangle(Sp[i].x1, Sp[i].y1, Sp[i].x2, Sp[i].y2, Sp[i].x3, Sp[i].y3);   //This is the funation that creates the rectangles/platforms and displays them onto the
  }                                                                         //screen. The fill funtion gives the spikes a greyish colour so that they can be
}                                                                           //distinguished from the platforms with more ease.

int Score (int score)
{
  textSize(16);                       //This function keeps a track of the player's score. It displays the score onto the top right corner of the screen and
  fill(256, 256, 256);                //increases by one every time the draw function repeats. The value is returned in order allow for the global variable
  text("Score:", 800, 50);            //to be passed to the other funtions.
  text(score, 850, 50);
  score++;
  return score;
}