//your code here
Particle [] stars;
void setup()
{
  //your code here
  size(400,400);
  background(0,0,0);
  stars = new Particle[1000];
  for(int i = 1; i < stars.length; i++){
    stars[i] = new Particle();
  }
  stars[0] = new OddballParticle();
}
void draw()
{
  //your code here
  background(0,0,0);
  for(int i = 0; i < stars.length; i++){
    stars[i].move();
    stars[i].show();
  }
}
class Particle
{
  //your code here
  public double myX, myY, myA, myS, mySize;
  public int myC;
  Particle(){
    myX = 200;
    myY = 200;
    myA = (Math.random()*2*Math.PI);
    myS = ((Math.random()*4)-2);
    myC = color(255,255,255);
    mySize = 2;
  }
  void move(){
    myX = myX + Math.cos(myA) * myS;
    myY = myY + Math.sin(myA) * myS;
    mySize = mySize + (double)(Math.random()*0.02*myS);
    if(myX > 405 || myX < -5 || myY > 405 || myY < -5){
      myX = 200;
      myY = 200;
      mySize = mySize*0.3;
      myS = myS * 0.5;
    }
  }
  void show(){
    noStroke();
    fill(myC);
    ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
  //your code here
  OddballParticle(){
    myX = 200;
    myY = 200;
    myA = (Math.random()*2*Math.PI);
    myS = ((Math.random()*6)-3);
    myC = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  void move(){
    myX = myX + (Math.random()*4)-2;
    myY = myY + (Math.random()*4)-2;
  }
  void show(){
    noStroke();
    fill(myC);
    ellipse((float)myX,(float)myY,20,20);
  }
}
