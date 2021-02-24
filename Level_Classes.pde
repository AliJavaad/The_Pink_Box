class Platform
{
  float x;                  //This class is for the platforms on each level. It contains variables for the x and y coordinates of the top left corner of the platform 
  float y;                  //and also the width and the height. These are all if the parameters needed in order to create a platform using the rect() function.
  float w;
  float h;
}

class End
{
  float ex;                //This class is for the orb(ellipse) on each level. It contains variables for the x and y coordinates of the center of the ellipse  
  float ey;                //and also the width and the height. These are all if the parameters needed in order to create an ellipse using the ellipse() function.
  float ew;
  float eh;
}

class Spike
{
  float x1;                //This class is for the spikes on some levels. It contains variables for the x and y coordinates of three points, the first of which 
  float y1;                //is the bottom left corner of the base. The second is the the top vertice of the triangle and the last is the bottom right coordinate 
  float x2;                //of the base.
  float y2;
  float x3;
  float y3;
}