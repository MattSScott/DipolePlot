float x;
float y;
float angle = 2*PI;
float c = 3*pow(10,8);
float f = 200*pow(10, 6);
float px;
float py;

void setup(){
  size(600, 600);
  background(0);
  stroke(255);
  translate(width/2, height/2);
  for(int i=0; i<360; i+=15){
    x = 250*cos(radians(i));
    y = 250*sin(radians(i));
    line(0, 0, x, y);
    text((360-i)%360, x, y);
  }
}

void draw(){
  stroke(255);
  strokeWeight(4);
  
  float r = cos(PI*f*cos(angle)/c);
  r = r*r*200;
  x = r*cos(angle);
  y = r*sin(angle);
  
  push();
  translate(width/2, height/2);
  if(frameCount > 1){
  line(x, y, px, py);
  }
  pop();
  
  px = x;
  py = y;
  angle-=0.1;
}
