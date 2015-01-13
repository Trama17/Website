void setup() {
  size(900,400);
}

void draw() {
  background(150,200,255);
  strokeWeight(3);
  line(250,60,670,60);
  line(100,250,800,250);
  textSize(32);
    text("Historic Computer Systems",250,50);
  textSize(12);
    histEvent("Electromechanical; Z2 - 1939","an early example of electromechanical relay computer",100,200,true);
    histEvent("ENIAC - 1946","first electronic general-purpose computer",150,300,false);
    histEvent("Manchester Mark 1 - 1948","one of the earliest stored-program computers",300,200,true);
    histEvent("EDSAC - 1949","second electronic stored-program computer to regularly serve",350,300,false);
    histEvent("Ferranti Mark 1 - 1951","First commercial computer",500,200,true);
    histEvent("Magnetic Storage - 1954","magnetiztion (counter) clockwise",550,300,false);
    histEvent("Transistor Computers - 1955","Completely replaced the vacuum tubes",700,200,true);
    histEvent("Super Computers - 1960","Extremely large and smart computers",750,300,false);
  textSize(8);
  fill(0);
    text("Trevor",1,8);
    text("Tateyama",1,17);
}

void histEvent(String eventName, String details, int xpos, int ypos, boolean top) {
  if (top) {
    line(xpos,ypos,xpos+50,ypos+50);
    fill(0,80,0);
    text(eventName,xpos-30,ypos-3);
  
  if (mouseX > xpos-50 && mouseX < xpos+150 &&
    mouseY > ypos-20 && mouseY < ypos+10) {
    fill(0,150,0);
    text(details, xpos-80, ypos-30);
  }
} else {//if (!top) {
    line(xpos,ypos,xpos+50,ypos-50);
    fill(0,80,0);
    text(eventName,xpos-65,ypos+13);
    
  if (mouseX > xpos-150 && mouseX < xpos+50 &&
    mouseY > ypos-20 && mouseY < ypos+10) {
    fill(0,150,0);
    text(details, xpos-120, ypos+40);
    }
  }
}

