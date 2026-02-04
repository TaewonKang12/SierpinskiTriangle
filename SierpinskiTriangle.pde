  int x = 0;
  int y = 0;
public void setup()
{
  size(1000, 1000);
}
public void draw()
{
  int e = 500;
  int w = 0;
  background(5,500);
  sierpinski(100+x, 500+y, 700);
  ellipse(e,w,50,50);
  w=w+10;
  if(w<1000){
  w=0;
  }
}
public void mouseDragged()//optional
{
x=mouseX-450;
y=mouseY-150;
}
public void sierpinski(int x, int y, int len) 
{
    if (len<20) {
      fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      noStroke();
      triangle(x, y, x+len, y, x+len/2, y-len);
    } else {
      sierpinski(x, y, len/2);
      sierpinski(x+len/2, y, len/2);
      sierpinski(x+len/4, y-len/2, len/2);
    }
}
