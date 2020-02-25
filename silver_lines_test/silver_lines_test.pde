float i=500;
float j=i;
long seed;
boolean chg=false;

void setup()
{
  size(1000, 1000);
  background(0);
  noiseDetail(3);
}

void draw()
{
  //drawLine(i, 30);
  //drawLine(j, 30);
 for(int i=0;i<1000;i+=31)
 {
  drawRow(i);
 }

    i++;
    j--;
    
    if(i>750)
    {
     i=500;
     j=i;
     //clear();
    }


}


void drawLine(float x, float y)
{
  seed+=10;
  stroke(map(j, 250, 500, 0, 255));
  //line(x+noise(3+seed*0.01)*100, y+noise(2+seed*0.01)*100, 30+x+noise(1+seed*0.01)*100, 30+y+noise(seed*0.01)*100);
  
  line(x, y, 50+x, 30+y); //saubere Variante ++++++++++++++++++++++++++++++++++
}

void drawRow(float k)
{
    drawLine(i, k);
    drawLine(j, k);
}