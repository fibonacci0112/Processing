float start;
int param1=4;
float param2=0.5;
void setup()
{
  size(500, 500); 
  background(0);
  noiseDetail(param1, param2);
}

void draw()
{
  clear();
  float xoff=start;
  for (float i=0; i<500+5; i++)
  {
    noStroke();
    ellipse(i, noise(xoff)*500, 2, 2);


    xoff+=0.01;
  }

  start+=0.01;
  noiseDetail(param1,param2);
}

void keyReleased()
{
  if (key == 'n'&& param1>1)
  {
    param1--;
  }
  if (key == 'b' && param1<10)
  {
    param1++;
  }
  
  if (key == 'c'&& param2>0.1)
  {
    param2-=0.1;
  }
  if (key == 'v' && param2<1.0)
  {
    param2+=0.1;
  }
  println(param1 +" "+ param2);
}