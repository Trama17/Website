Lines[] myLines = new Lines [1];

void setup() {
  size(960,520,P3D);
  background(random(100, 255),random(100, 255),random(100, 255));
  //frameRate(20);
  for (int i=0; i<myLines.length; i++) {
    myLines[i] = new Lines(random(width), random(height),0,0);
  }
}

void draw() {
  for (int i=0; i<myLines.length; i++) {
    Lines iLines = myLines[i];
    iLines.display();
  }
  if (frameCount == 500) {
    frameCount=0;
    background(0,random(255),0);
  }
//  for (float i=1; i<50000000; i+=500) {
//    if (frameCount == i) {
//      noStroke();
//      fill(0, random(150, 255),0);
//      rect(0, 0, width/2,height/2);
//    }
//  }
//  for (float i=100; i<50000000; i+=500) {
//    if (frameCount == i) {
//      noStroke();
//      fill(0, random(150, 255),0);
//      rect(width/2, 0, width, height/2);
//    }
//  }
//  for (float i=200; i<50000000; i+=500) {
//    if (frameCount == i) {
//      noStroke();
//      fill(0, random(150, 255),0);
//      rect(width/2,height/2,width,height);
//    }
//  }
//  for (float i=300; i<50000000; i+=500) {
//    if (frameCount == i) {
//      noStroke();
//      fill(0, random(150, 255),0);
//      rect(0,height/2,width/2,height);
//    }
//  }
//  for (float i=399; i<50000000; i+=5000) {
//    if (frameCount == i) {
//      noStroke();
//      fill(255);
//      rect(0,0,width,height);
//      fill(255,0,0);
//      rect(0,0,width,height/13);
//      rect(0,height/13*2,width,height/13);
//      rect(0,height/13*4,width,height/13);
//      rect(0,height/13*6,width,height/13);
//      rect(0,height/13*8,width,height/13);
//      rect(0,height/13*10,width,height/13);
//      rect(0,height/13*12,width,height/13);
//      fill(0,0,255);
//      rect(0,0,width/2,height/2);
//    }
//  }
//  for (float i=398; i<50000000; i+=500) {
//    if (frameCount == i) {
//      noStroke();
//      fill(255);
//      rect(0,0,width,height);
//      fill(255,0,0);
//      ellipse(width/2,height/2,height/2,height/2);
//    }
//  }
//  for (float i=400; i<50000000; i+=500) {
//    if (frameCount == i) {
//      noStroke();
//      fill(0, random(150, 255),0);
//      rect(0,0,width,height);
//    }
//  }
//  println(frameCount);
}




class Lines {
  float xpos, ypos, zpos, strokeW, lineLength;

  Lines(float tempX, float tempY, float tempStroke, float tempLength) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    lineLength = tempLength;
  }
  void display() {
    strokeW = random(3, 5);
    lineLength = random(1,100);
    stroke(0,random(100,255),random(50,150));
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0 || zpos > 100 || zpos < -100) {
      xpos = random(width);
      ypos = random(height);
      zpos = 0;
    } else {
      if (random(800)>680) {
        strokeWeight(strokeW);
        moveLeft(xpos, ypos, lineLength);
      } else if (random(800)>550) {
        strokeWeight(strokeW);
        moveUp(xpos, ypos, lineLength);
      } else if (random(800)>500) {
        strokeWeight(strokeW);
        moveDown(xpos, ypos, lineLength);
      } else if (random(800)>430) {
        strokeWeight(strokeW);
        moveRight(xpos, ypos, lineLength);
      } 
      
      else if (random(800)>200) {
        strokeWeight(strokeW);
        moveForward(xpos, ypos, zpos, lineLength);
      } else if (random(800)>0) {
        strokeWeight(strokeW);
        moveBackward(xpos, ypos, zpos, lineLength);
      } 
      
//      else if (random(800)>310) {
//        strokeWeight(strokeW);
//        moveRD(xpos, ypos, lineLength);
//      } else if (random(800)>200) {
//        strokeWeight(strokeW);
//        moveLD(xpos, ypos, lineLength);
//      } else if (random(800)>180) {
//        strokeWeight(strokeW);
//        moveRU(xpos, ypos, lineLength);
//      } else {
//        strokeWeight(strokeW);
//        moveLU(xpos, ypos, lineLength);
//      } 


    }
  }
  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX+i;
      ypos = startY;
    }
  }

  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos = startX-i;
      ypos = startY;
    }
  }

  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);
      xpos = startX;
      ypos = startY-i;
    }
  }

  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);
      xpos = startX;
      ypos = startY+i;
    }
  }
  
  //Z-changes
  
  void moveForward(float startX, float startY, float startZ, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY, startZ+i);
      xpos = startX;
      ypos = startY;
      zpos = startZ+i;
    }
  }
  
  void moveBackward(float startX, float startY, float startZ, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY, startZ-i);
      xpos = startX;
      ypos = startY;
      zpos = startZ-i;
    }
  }
  
//diagonals
  
//  void moveRD(float startX, float startY, float moveCount) {
//    for (float i=0; i<moveCount; i++) {
//      point(startX+i, startY+i);
//      xpos = startX+i;
//      ypos = startY+i;
//    }
//  }
//  
//  void moveLD(float startX, float startY, float moveCount) {
//    for (float i=0; i<moveCount; i++) {
//      point(startX-i, startY+i);
//      xpos = startX-i;
//      ypos = startY+i;
//    }
//  }
//  
//  void moveRU(float startX, float startY, float moveCount) {
//    for (float i=0; i<moveCount; i++) {
//      point(startX+i, startY-i);
//      xpos = startX+i;
//      ypos = startY-i;
//    }
//  }
//  
//  void moveLU(float startX, float startY, float moveCount) {
//    for (float i=0; i<moveCount; i++) {
//      point(startX-i, startY-i);
//      xpos = startX-i;
//      ypos = startY-i;
//    }
//  }
}


