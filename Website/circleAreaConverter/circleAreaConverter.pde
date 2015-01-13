void setup() {
  size(800,800);
}

void draw() {
  background(0);
  textAlign(CENTER);
  textSize(32);
  fill(255);
  text("Area of a Circle Conversion",400,50);
  textAlign(LEFT);
  textSize(8);
  text("Trevor",2,8);
  text("Tateyama",2,15);
  textSize(12);
  drawReference(400,400);
  text("Radius = " + int(mouseX-400),50,100);
  text("Area = " + int(radiusToArea(mouseX-400)), 50,150);
  line(400,400,800,400);
//  println(mouseX,mouseY);
  
  /*to see fun circles and random colors uncomment 
  the next two lines and coment out the following two lines*/
  
  //fill(random(mouseY),random(mouseX),120,100);
  //ellipse(400,400,(mouseX-400)*2,(mouseY-400)*2);
  fill(0,255,120,100);
  ellipse(400,400,(mouseX-400)*2,(mouseX-400)*2);
}

float radiusToArea(float radius) {
  float area = (radius * radius * 3.1415926);
  return area;
}

void drawReference(int xpos, int ypos) {
  stroke(255);
  for(int i=0; i<400; i+=50) {
    fill(255);
    text(i,xpos+i-8,ypos);
    line(xpos+i,ypos,xpos+i,ypos+10);
  }
}

