 int starty = 150;
 int startx = 0;
 int endx =0;
 int endy =150;
 int choose = (int)(Math.random()*15);

void setup()
{
  background(255,255,255);
  size(500,500);
  frameRate(25); 
}

void draw()
{
  //heart
  if(choose > 5 && choose <= 10){
   stroke(255,255,255);
  strokeWeight(5);
  noFill();
  arc(200,210,100,100,radians(170),radians(360));
  arc(300,210,100,100,radians(180),radians(370));
  line(150,218,250,330);
    line(349,218,250,330);
    arc(200,220,20,20,radians(180), radians(360));
     arc(300,220,20,20,radians(180), radians(360));
     arc(250,270,20,20,radians(0), radians(180));
   }
   
   else if (choose > 10 && choose <= 15){
    //duck
    noStroke();
    fill(255,255,255);
ellipse(250,290,150,90);
triangle(150,250, 190,318, 205,255);
ellipse(290,230,90,90);
triangle(324,210, 302,240, 348,240);
arc(325,240,45,25,0,PI);

//ripples
stroke(255,255,255);
strokeWeight(3);
noFill();
arc(250,325,100,50,radians(45),radians(135));
arc(250,320,150,100,radians(45),radians(135));
//left side ripples
arc(240,295,150,100,radians(135),radians(175));
arc(245,290,200,150,radians(135),radians(185));
//right ripples
arc(270,310,120,60,radians(0),radians(45));
arc(270,310,150,100,radians(0),radians(45));
arc(270,310,120,60,radians(345),radians(360));
arc(270,310,150,100,radians(325),radians(360));
   }

//hat
ellipse(290,195,90,20);
rect(260,145,60,30);
rect(260,185,60,10);
ellipse(290,145,60,8);
   
else if (choose <= 5){
//bunny
noFill();
strokeWeight(5);
stroke(255,255,255);
arc(220,260,60,250,radians(180),radians(350));
arc(280,260,60,250,radians(187),radians(360));
ellipse(250,310,180,130);
ellipse(220,300,30,30);
ellipse(280,300,30,30);
triangle(240,330, 250,340, 260,330); 
line(250,340, 260, 350);
line(250,340, 240, 350); 
fill(255,255,255);
ellipse(227,293,5,5);
ellipse(215,308,5,5);
ellipse(287,293,5,5);
ellipse(275,308,5,5);
 
 }
   
    //lightning
if (mousePressed == true){
  strokeWeight(5);
 int x = 0;
 starty = 0;
 startx = (int)(Math.random()*500);
 endx =0;
 endy =150;
  while(endy<=250){
  
  if (choose > 5 && choose <= 10){
    stroke((int)(Math.random()*100),0,0);
    }
    else if (choose>10 && choose <= 15){ 
    stroke(0,0,(int)(Math.random()*100));
    }
    else if (choose<=5){
    stroke(0,(int)(Math.random()*100),(int)(Math.random()*100));
    }
  endx=startx + (int)(Math.random()*20-10);
endy=starty+  (int)(Math.random()*8);
 line(startx,starty, endx,endy);
 
 
if (choose>5 && choose <= 10){
    stroke((int)(Math.random()*256),0,0);
    }
 else if (choose > 10 && choose<=15){
 stroke(0,0,(int)(Math.random()*256));
 }
 else if (choose<=5){
    stroke(0,(int)(Math.random()*256),(int)(Math.random()*256));
    }
    
 line(startx,starty+250,endx,endy+250);
  startx=endx;
  starty=endy;
  }
 
}
}
