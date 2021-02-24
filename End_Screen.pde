void EndScreen(int score)                                //Displays the end screen. The function to restart the game in located in the Start_Screen tab.
{
  fill(256, 256, 256);
  rect(300, 400, 400, 100);
  textSize(60);
  fill(0, 0, 0);
  text("Try Again?", 335, 465);
  fill(255, 79, 117);
  text("Congratulations!", 280, 150);
  textSize(32);
  fill(256, 256, 256);
  text("Created by: Farhan Abdullah", 300, 650);
  text("Javaad Ali", 487, 700);

  fill(256, 256, 256);
  rect(300, 280, 400, 100);
  textSize(26);
  fill(0, 0, 0);
  text("Your score is: ", 325, 315);                        //Shows the player's score and reminds them that the lower the score, the better the run.
  text(score, 600, 315);
  textSize(16);
  text("(the lower the score the better)", 325, 350);
}