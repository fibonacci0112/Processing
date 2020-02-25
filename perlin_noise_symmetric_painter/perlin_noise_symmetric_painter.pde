
float i=0;
float h=0;
int r=40, g=40;
int resolution = 1000;
void setup()
{
  
  size(1000, 1000);

  background(0);
  smooth();
  noiseDetail(4, 0.25);
}

void draw()
{

  translate(width/2, 0);          
  rotate(PI/4);                  

  fill(r, g, noise(i+18)*255);     //farben


   if (keyPressed)
  {
    save("test.jpg");
    clear();
  }

    stroke(1);
   //else 
  { 
   noStroke();
  }


  //if (i%0.04>0.025)
  { 
    ellipse((noise(i)*resolution), (noise(i+5)*resolution), h, h);
    ellipse((noise(i+5)*resolution), (noise(i)*resolution), h, h);

    ellipse((noise(i+10)*resolution), (noise(i+40)*resolution), h, h);
    ellipse((noise(i+40)*resolution), (noise(i+10)*resolution), h, h);

    ellipse((noise(i+1)*resolution), (noise(i+4)*resolution), h, h);
    ellipse((noise(i+4)*resolution), (noise(i+1)*resolution), h, h);


    ellipse((noise(i+20)*resolution), (noise(i+15)*resolution), h, h);
    ellipse((noise(i+15)*resolution), (noise(i+20)*resolution), h, h);
  }

  if (noise(i)>noise(i-0.01)) {
    r--;
    g++;
  } //farbspiel
  else if (noise(i)==noise(i-0.01));
  else
  {
    r++;
    g--;
  }

  if (noise(i+0.5)>noise(i+0.5-0.01)) {
    if (h<100) {
      h++;
    }
  } else {
    if (h>-100) {
      h--;
    }
  } //größe



  if (g<0) {
    g=0;
  }      
  if (g>255) {
    g=255;
  }
  if (r<0) {
    r=0;
  }
  if (r>255) {
    r=255;
  }

  i+=0.01;

  //filter(DILATE);
}