public void setup()
{
size(600,600);
background(255);
noLoop();
}
public void draw()
{
background(255);
sierpinski(100, 500, 400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
if(len<=20){
 int x1 = x;
 int y1 = y;
 int x2 = x + len;
 int y2 = y + len;
 int x3 = x + len/2;
 int y3 = y + len/2;
 fill(0);
 stroke(0);
 triangle(x1,y1,x2,y2,x3,y3);
 }
 else{
  int halfLen = len/2; 
  sierpinski(x,y,halfLen);
  sierpinski(x + halfLen, y, halfLen);
  sierpinski(x + halfLen/2, y - halfLen, halfLen);
 }
}
