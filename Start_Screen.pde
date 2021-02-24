void StartScreen ()                                 //Displays the Start Screen
{
  fill(256, 256, 256);
  rect(300, 400, 400, 100);
  textSize(64);
  fill(0, 0, 0);
  text("Start Game", 325, 475);
  fill(255, 79, 117);
  text("The Pink Box", 300, 150);
  textSize(32);
  fill(256, 256, 256);
  text("Created by: Javaad Ali", 300, 650);
  text("and friends", 487, 700);
}

boolean click= false;                                                          //Global boolean for keeping track of the mouse click

int Click(int score)
{
  if (mouseX > 300 && mouseX < 700 && mouseY > 400 && mouseY < 500 && click)   //If the mouse is inside the area of the specified rectangle and the mouse has been
  {                                                                            //clicked, the c value is changed to one, and the score reset to zero. By doing so
    c= 1;                                                                      //this function can be used at both the start and end of the game as long as the
    click= false;                                                              //same conditions are required.
    score= 0;
    return score;
  }
  return score;
}

void mouseReleased()
{
  click= true;
}
