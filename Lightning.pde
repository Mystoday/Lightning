 int starty = 150;
 int startx = 0;
 int endx =0;
 int endy =150;
 int choose = (int)(Math.random()*10);
void setup()
{
  background(255,255,255);
  size(500,500);
  frameRate(20);
 
}
void draw()
{
 
  //heart
   stroke(255,255,255);
  strokeWeight(5);
  noFill();
  arc(200,200,100,100,radians(170),radians(360));
  arc(300,200,100,100,radians(180),radians(370));
  line(150,208,250,330);
    line(349,208,250,330);
   
    //duck
    noStroke();
    fill(255,255,255);
ellipse(220,210,150,90);
triangle(120,170, 160,238, 175,175);
ellipse(260,150,90,90);
triangle(294,140, 272,160, 318,160);
arc(295,160,45,25,0,PI);
   
    //lightning
if (mousePressed == true){
  strokeWeight(1);
 int x = 200;
 starty = 0;
 startx = (int)(Math.random()*500);
 endx =0;
 endy =150;
 
  while(endy<=250){
    stroke(0,0,(int)(Math.random()*150));
  endx=startx + (int)(Math.random()*20-10);
  println(x);
endy=starty+  (int)(Math.random()*8);
 line(startx,starty, endx,endy);
 stroke(0,0,(int)(Math.random()*256));
 line(startx,starty+250,endx,endy+250);
  startx=endx;
  starty=endy;
  }
 
}
}

