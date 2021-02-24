void keyPressed()
{
  presskey(key, keyCode);         //When a key is pressed, call the presskey function.
}

void keyReleased()
{
  releasekey(key, keyCode);       //When a key is released, call the releasekey function.
}

//There are global variables set to each arrowkey and when the appropriate key is pressed the values of the variables change. This along with the update box funtion
//translates to movement in the game.
void presskey (int key, int keyCode)
{
  if (keyCode == RIGHT)
  {
    right= 1;
    box.direction= -1;
  }
  if (keyCode == LEFT)
  {
    left = -1;
    box.direction= 1;
  }
  if (keyCode == UP)
  {
    up= -1;
  }
  if (keyCode == DOWN)
  {
    down= 1;
  }
}

//When a key is released all global variables are set to 0 to stop the movement.
void releasekey(int key, int keyCode)
{
  if (keyCode == UP)
  {
    up= 0;
  }
  if (keyCode == LEFT)
  {
    left= 0;
  }
  if (keyCode == RIGHT)
  {
    right= 0;
  }
  if (keyCode == down)
  {
    down= 0;
  }
}