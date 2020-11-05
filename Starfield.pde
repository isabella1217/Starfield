Particle[]star;
void setup()
{
  size(600,600);
  background(0);
  star = new Particle[500];
  for(int i = 0; i<star.length; i++){
    star[i] = new Particle();
    star[0] = new OddballStar();
  }
}
void draw()
{
  for (int i = 0; i<star.length; i++){
    star[i].show();
    star[i].move();
  }
}
class Particle
{
  double myX, myY; 
  double Angle; 
  double Speed;
  int myColor;
  
  Particle()
  {
    myX = 300;
    myY = 300;
    Angle = Math.random()*3*Math.PI;
    Speed = Math.random()*3;
    myColor = color (255,250,191);
    
  }
  
  void move(){
    myX = myX + Math.cos(Angle)*Speed;
    myY = myY + Math.sin(Angle)*Speed;
  }
  
  void show(){
    fill(myColor);
    stroke(229,224,63);
    ellipse((int)myX,(int) myY, 6,6);
  }
}
class OddballStar extends Particle
{ 
  OddballStar(){
    myX = 300;
    myY = 300;
    Angle = Math.random()*3*Math.PI;
    Speed = Math.random()*4;
    myColor = color (255,250,191);
  }

void move(){
  myX = myX + (int) (Math.random() * 5)-2;
  myY = myY + (int) (Math.random() * 5)-2; 
}
void show(){
    fill(206,202,79);
    stroke (206,202,79);
    rect((int)myX,(int) myY, 10,10);
}
}



