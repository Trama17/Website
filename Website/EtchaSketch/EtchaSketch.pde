//Global Variable
int x, y;

void setup() {
  size(400,400);
  frameRate(20);
  // Initiallizing start coords
  x = width/2;
  y = height/2;
}

void draw() {
  text("Controls: up,w ; left,a ; down,s ; right,d",5,20);
  text("diagonals: z,x,c,v", 30,40);
  //drawName();
  //noLoop();
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      moveLeft(1);
    }
    if (key == 's' || key == 'S') {
      moveDown(1);
    }
    if (key == 'd' || key == 'D') {
      moveRight(1);
    }
    if (key == 'w' || key == 'W') {
      moveUp(1);
    }
    if (key == 'z' || key == 'Z') {
      moveDiag45(1);
    }
    if (key == 'x' || key == 'X') {
      moveDiag135(1);
    }
    if (key == 'c' || key == 'C') {
      moveDiag225(1);
    }
    if (key == 'v' || key == 'V') {
      moveDiag315(1);
    }
  }
}

/*void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      moveRight(1);
    }
    else if (keyCode == LEFT) {
      moveLeft(1);
    }
    else if (keyCode == UP) {
      moveUp(1);
    }
    else if (keyCode == DOWN) {
      moveDown(1);
    }
    else if (keyCode == RIGHT && keyCode == DOWN) {
      moveDiag315(1);
    }
  }
}*/




// Algorithm for your first name
void drawName() {
  moveDiag315(4);
  //T
  moveRight(8);
  moveLeft(4);
  moveDown(8);
  moveRight(4);
  //R
  moveUp(4);
  moveRight(2);
  moveDown(2);
  moveLeft(2);
  moveDiag315(2);
  moveRight(2);
  //E
  moveUp(4);
  moveRight(2);
  moveLeft(2);
  moveDown(2);
  moveRight(1);
  moveLeft(1);
  moveDown(2);
  moveRight(5);
  //V
  moveLeftUp(4);
  moveRightDown(4);
  moveRightUp(4);
  moveLeftDown(4);
  //O
  moveRight(6);
  moveUp(4);
  moveLeft(3);
  moveDown(4);
  moveRight(5);
  //R
  moveUp(4);
  moveRight(2);
  moveDown(2);
  moveLeft(2);
  moveDiag315(2);
  //fancy ending
  moveRight(2);
  moveLeft(25);
  moveRight(25);
  //moveDiag315(10);
}

// Method to draw right
void moveRight(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y);
  }
  x=x+(10*rep);
}

// Method to draw left
void moveLeft(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i,y);
  }
  x=x-(10*rep);
}


// Method to draw up
void moveUp(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x,y-i);
  }
  y=y-(10*rep);
}


// Method to draw down
void moveDown(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x,y+i);
  }
  y=y+(10*rep);
}


//diagonals (45 degree increments)


// Method to draw right and up (45 degrees)
void moveDiag45(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y-i);
  }
  x=x+(10*rep);
  y=y-(10*rep);
}

// Method to draw left and up (135 degrees)
void moveDiag135(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i,y-i);
  }
  x=x-(10*rep);
  y=y-(10*rep);
}

// Method to draw left and down (225 degrees)
void moveDiag225(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i,y+i);
  }
  x=x-(10*rep);
  y=y+(10*rep);
}


// Method to draw right and down (315 degrees)
void moveDiag315(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y+i);
  }
  x=x+(10*rep);
  y=y+(10*rep);
}

//move odd ratios: (-2x,-y ; 2x,y ; 2x,-y ; -2x,y)

// Method to draw left and up
void moveLeftUp(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i/2,y-i);
  }
  x=x-(10*rep)/2;
  y=y-(10*rep);
}

// Method to draw right and down
void moveRightDown(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i/2,y+i);
  }
  x=x+(10*rep)/2;
  y=y+(10*rep);
}

// Method to draw right and up
void moveRightUp(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i/2,y-i);
  }
  x=x+(10*rep)/2;
  y=y-(10*rep);
}

// Method to draw left and down
void moveLeftDown(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i/2,y+i);
  }
  x=x-(10*rep)/2;
  y=y+(10*rep);
}


