long seed=0;

float rotation=PI/4; 
float scale=100; 
color c=#ffffff;
float thickness=20;

void setup()
{
  size(1000, 1000);
  background(0);
  noiseDetail(1);
  seed+= random(5, 9);
}

int i;
void draw()
{
  mandala(new PVector(500, 500), 100, 10, #FF00FF, 10);
  // pushMatrix();
  stroke(c);
  stroke(red(c)-i*100/scale*red(c)/100, green(c)-i*100/scale*green(c)/100, blue(c)-i*100/scale*blue(c)/100);
  translate(i, noise(seed+i*0.02)*i*3-thickness/2+i/2);
  line(0, 0, 0, map(thickness-i, thickness-scale, thickness, 0, thickness));
  // popMatrix();



  i++;
  if (i>scale)
  {
    i=0;
    seed++;
    rotate(PI/(10/2));
    translate(199, 299);
  }
  delay(40);
}

void branch(float rotation, float scale, color c)
{
  seed+= random(5, 9);
  float thickness=10;

  for (int i=0; i<scale; i++)
  {

    pushMatrix();
    stroke(c);
    stroke(red(c)-i*100/scale*red(c)/100, green(c)-i*100/scale*green(c)/100, blue(c)-i*100/scale*blue(c)/100);
    translate(i, noise(seed+i*0.02)*i*3-thickness/2+i/2);
    line(0, 0, 0, map(thickness-i, thickness-scale, thickness, 0, thickness));
    popMatrix();
  }
  rotate(rotation);
}

void mandala(PVector ort, float scale, float numofbr, color c, float thickness)
{

  // pushMatrix();
  //translate(ort.x, ort.y); 
  //this.rotation=PI/(numofbr/2);
  this.scale=scale;
  this.c=c;
  this.thickness=thickness;
  //for (int i=0; i<numofbr; i++)
  {
    // branch(PI/(numofbr/2), scale, c);
  }

  //popMatrix();
}