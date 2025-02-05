int baseCase = 20;
int max = 400;

public void setup()
{
size(600,600);
background(255);
noLoop();
}
public void draw()
{
background(255);
sierpinski(100, 500, max);
}
public void mouseDragged()//optional
{
  baseCase = max(5,mouseX/2);
  redraw();
}
public void sierpinski(int x, int y, int len) 
{
if(len<=baseCase){
 int x1 = x;
 int y1 = y;
 int x3 = x + len;
 int y3 = y;
 int x2 = x + len/2;
 int y2 = y - len/2;
 fill(0);
 stroke(0);
 triangle(x1,y1,x2,y2,x3,y3);
 }
 else{
  int halfLen = len/2; 
  sierpinski(x,y,halfLen);
  sierpinski(x + halfLen, y, halfLen);
  sierpinski(x + halfLen/2, y - halfLen/2, halfLen);
 }
}
