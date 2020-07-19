float x;
float y;
float x2;
float y2;
float xoff;
float yoff;

void setup(){
  size(800,800);
}

void draw(){
  background(255);
  
  //black rectangle splitting the screen
  fill(0);
  triangle(0,0,width, 0, width, height); 
   
  //circle 1 (+line)
  x = map(noise(xoff),0,1,0,width);
  y = map(noise(yoff), 0,1,0,height);
  
  stroke(125);
  line(x,y,0,0); //so you can still see where circle is, when it's on the other side
  
  fill(0);
  noStroke();
  circle(x,y,100);
 
  //circle 2 (+line)
  //other way round, so that it's mirroring the other circle
  x2 = map(noise(yoff),0,1,0,width);
  y2 = map(noise(xoff), 0,1,0,height);
  
  stroke(125);
  line(x2,y2,0,0);
  
  fill(255);
  noStroke();
  circle(x2,y2,100);
  
  //movement
  xoff += 0.01;
  yoff += 0.02;
}

void mouseReleased(){
  saveFrame("data/line-######.png");
}
