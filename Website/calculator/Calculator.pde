CalcButton[] numButtons = new CalcButton[10];
CalcButton[] opButtons = new CalcButton[14];
CalcButton[] spButtons = new CalcButton[1];


String displayValue = "0";
String valueToCompute = "";
String valueToCompute2 = "";
float X = 0;
float Y = 0;
float Z = 0;
float valueToComputeI = 0;
float valueToComputeI2 = 0;
float result = 0;
char opValue;
boolean firstNum;

void setup() {
  size(213, 370);
  background(50, 70, 100);
  noFill();
  strokeWeight(3);
  stroke(100, 150, 200);
  rect(1, 1, 210, 55);


  numButtons[0] = new CalcButton(10, 320).asNumber(0, 45, 45);
  numButtons[1] = new CalcButton(10, 270).asNumber(1, 45, 45);
  numButtons[2] = new CalcButton(60, 270).asNumber(2, 45, 45);
  numButtons[3] = new CalcButton(110, 270).asNumber(3, 45, 45);
  numButtons[4] = new CalcButton(10, 220).asNumber(4, 45, 45);
  numButtons[5] = new CalcButton(60, 220).asNumber(5, 45, 45);
  numButtons[6] = new CalcButton(110, 220).asNumber(6, 45, 45);
  numButtons[7] = new CalcButton(10, 170).asNumber(7, 45, 45);
  numButtons[8] = new CalcButton(60, 170).asNumber(8, 45, 45);
  numButtons[9] = new CalcButton(110, 170).asNumber(9, 45, 45);
  
  opButtons[0] = new CalcButton(160, 320).asOperator("=", 45, 45);
  opButtons[1] = new CalcButton(160, 220).asOperator("-", 45, 45);
  opButtons[2] = new CalcButton(160, 270).asOperator("+", 45, 45);
  opButtons[3] = new CalcButton(160, 170).asOperator("*", 45, 45);
  opButtons[4] = new CalcButton(160, 120).asOperator("÷", 45, 45);
  opButtons[5] = new CalcButton(60, 120).asOperator("^", 45, 45);
  opButtons[6] = new CalcButton(10, 120).asOperator("√", 45, 45);
  opButtons[7] = new CalcButton(110, 120).asOperator("C", 45, 45);
  opButtons[8] = new CalcButton(110, 320).asOperator("±", 45, 45);
  opButtons[9] = new CalcButton(10, 70).asOperator("%", 45, 45);
  opButtons[10] = new CalcButton(10, 70).asOperator("∛", 45, 45);
  opButtons[11] = new CalcButton(60, 70).asOperator("ln", 45, 45);
  opButtons[12] = new CalcButton(110, 70).asOperator("log", 45, 45);
  opButtons[13] = new CalcButton(160, 70).asOperator("=)", 45, 45);
//  opButtons[9] = new CalcButton(10, 100).asOperator("→", 45, 45);
//  opButtons[10] = new CalcButton(60, 100).asOperator("X", 45, 45);
//  opButtons[11] = new CalcButton(110, 100).asOperator("Y", 45, 45);
//  opButtons[12] = new CalcButton(160, 100).asOperator("Z", 45, 45);

  spButtons[0] = new CalcButton(60,320).asSpecial(".",45,45);


  firstNum = true;
}

void draw() {
  for (int i=0; i<numButtons.length; i++) {
    CalcButton inumButton = numButtons[i];
    inumButton.display();
  }
  for (int i=0; i<opButtons.length; i++) {
    CalcButton iopButton = opButtons[i];
    iopButton.display();
  }
  for (int i=0; i<spButtons.length; i++) {
    CalcButton ispButton = spButtons[i];
    ispButton.display();
  }
  updateDisplay();
}


void mousePressed() {
  for (int i=0; i<numButtons.length; i++) {
    CalcButton inumButton = numButtons[i];
    inumButton.clickButton();
    if (inumButton.overBox) {
      if (firstNum) {
        valueToCompute += int(inumButton.numButtonValue);
        displayValue = valueToCompute;
      } else {
        valueToCompute2 += int(inumButton.numButtonValue);
        displayValue = valueToCompute2;
      }
    }
  }
  for (int i=0; i<opButtons.length; i++) {
    CalcButton iOpButton = opButtons[i];
    iOpButton.clickButton();
    if (iOpButton.overBox) {
      if (iOpButton.opButtonValue == "+") {
        if (result != 0) {
          opValue = '+';
          firstNum = false;
          displayValue = "+";
          valueToCompute2 = "";
        } else {
          opValue = '+';
          firstNum = false;
          displayValue = "+";
        }
      } 
      else if (iOpButton.opButtonValue == "-") {
        if (result != 0) {
          opValue = '-';
          firstNum = false;
          displayValue = "-";
          valueToCompute2 = "";
        } else {
          opValue = '-';
          firstNum = false;
          displayValue = "-";
        }
      }
      else if (iOpButton.opButtonValue == "*") {
        if (result != 0) {
          opValue = '*';
          firstNum = false;
          displayValue = "*";
          valueToCompute2 = "";
        } else {
          opValue = '*';
          firstNum = false;
          displayValue = "*";
        }
      }
      else if (iOpButton.opButtonValue == "÷") {
        if (result != 0) {
          opValue = '÷';
          firstNum = false;
          displayValue = "÷";
          valueToCompute2 = "";
        } else {
          opValue = '÷';
          firstNum = false;
          displayValue = "÷";
        }
      }
      else if (iOpButton.opButtonValue == "^") {
        if (result != 0) {
          opValue = '^';
          firstNum = false;
          displayValue = "^";
          valueToCompute2 = "";
        } else {
          opValue = '^';
          firstNum = false;
          displayValue = "^";
        }
      }
      else if (iOpButton.opButtonValue == "√") {
        if (result != 0) {
          opValue = '√';
          firstNum = false;
          displayValue = "√";
          valueToCompute2 = "";
        } else {
          opValue = '√';
          firstNum = false;
          displayValue = "√";
        }
      }
      else if (iOpButton.opButtonValue == "%") {
        if (result != 0) {
          opValue = '%';
          firstNum = false;
          displayValue = "%";
          valueToCompute2 = "";
        } else {
          opValue = '%';
          firstNum = false;
          displayValue = "%";
        }
      }
      else if (iOpButton.opButtonValue == "∛") {
        if (result != 0) {
          opValue = '∛';
          firstNum = false;
          displayValue = "∛";
          valueToCompute2 = "";
        } else {
          opValue = '∛';
          firstNum = false;
          displayValue = "∛";
        }
      }
      else if (iOpButton.opButtonValue == "ln") {
        if (result != 0) {
          opValue = 'N';
          firstNum = false;
          displayValue = "N";
          valueToCompute2 = "";
        } else {
          opValue = 'N';
          firstNum = false;
          displayValue = "N";
        }
      }
      else if (iOpButton.opButtonValue == "log") {
        if (result != 0) {
          opValue = 'L';
          firstNum = false;
          displayValue = "L";
          valueToCompute2 = "";
        } else {
          opValue = 'L';
          firstNum = false;
          displayValue = "L";
        }
      }
//      else if (iOpButton.opButtonValue == "!") {
//        if (result != 0) {
//          opValue = '!';
//          firstNum = false;
//          displayValue = "!";
//          valueToCompute2 = "";
//        } else {
//          opValue = '!';
//          firstNum = false;
//          displayValue = "!";
//        }
//      }
//      else if (iOpButton.opButtonValue == "→") {
//        if (result != 0) {
//          opValue = '→';
//          firstNum = false;
//          displayValue = "→";
//          valueToCompute2 = "";
//        } else {
//          opValue = '→';
//          firstNum = false;
//          displayValue = "→";
//        }
//      }
//      else if (iOpButton.opButtonValue == "X") {
//        if (result != 0) {
//          opValue = 'X';
//          firstNum = false;
//          displayValue = "X";
//          valueToCompute2 = "";
//        } else {
//          opValue = 'X';
//          firstNum = false;
//          displayValue = "X";
//        }
//      }
//      else if (iOpButton.opButtonValue == "Y") {
//        if (result != 0) {
//          opValue = 'Y';
//          firstNum = false;
//          displayValue = "Y";
//          valueToCompute2 = "";
//        } else {
//          opValue = 'Y';
//          firstNum = false;
//          displayValue = "Y";
//        }
//      }
//      else if (iOpButton.opButtonValue == "Z") {
//        if (result != 0) {
//          opValue = 'Z';
//          firstNum = false;
//          displayValue = "Z";
//          valueToCompute2 = "";
//        } else {
//          opValue = 'Z';
//          firstNum = false;
//          displayValue = "Z";
//        }
//      }
      else if (iOpButton.opButtonValue == "C") {
        displayValue = "0";
        opValue = 'C';
        valueToCompute = "";
        valueToCompute2 = "";
        valueToComputeI = 0;
        valueToComputeI2 = 0;
        result = 0;
        firstNum = true;
      }
      else if (iOpButton.opButtonValue == "±") {
        opValue = 'n';
        performCalculation();
      }
      else if (iOpButton.opButtonValue == "=") {
        firstNum = true;
        performCalculation();
      }
    }
  } 
  for (int i=0; i<spButtons.length; i++) {
    CalcButton iSpButton = spButtons[i];
    iSpButton.clickButton();
    if (iSpButton.overBox) {
      if (iSpButton.spButtonValue == ".") {
        if (firstNum) {
          valueToCompute += iSpButton.spButtonValue;
          displayValue = valueToCompute;
        } else {
          valueToCompute2 += iSpButton.spButtonValue;
          displayValue = valueToCompute2;
        }
      }
    }
  }
}



void performCalculation() {
  valueToComputeI = float(valueToCompute);
  valueToComputeI2 = float(valueToCompute2);
  if (opValue == '+') {
    result = valueToComputeI + valueToComputeI2;
    displayValue = str(result);
  } 
  else if (opValue == '-') {
    result = valueToComputeI - valueToComputeI2;
    displayValue = str(result);
  }
  else if (opValue == '*') {
    result = valueToComputeI * valueToComputeI2;
    displayValue = str(result);
  }
  else if (opValue == '÷') {
    result = valueToComputeI / valueToComputeI2;
    displayValue = str(result);
  }
  else if (opValue == '^') {
    result = pow(valueToComputeI,valueToComputeI2);
    displayValue = str(result);
  }
  else if (opValue == '√') {
    result = sqrt(valueToComputeI);
    displayValue = str(result);
  }
  else if (opValue == '%') {
    result = valueToComputeI/100;
    displayValue = str(result);
  }
  else if (opValue == '∛') {
    result = pow(valueToComputeI,1.0/3.0);
    displayValue = str(result);
  }
  else if (opValue == 'N') {
    result = log(valueToComputeI);
    displayValue = str(result);
  }
  else if (opValue == 'L') {
    result = (log(valueToComputeI) / log(10));
    displayValue = str(result);
  }
//  else if (opValue == '!') {
//    result = for (int i=valueToComputeI; i>0; i--) {
//      valueToComputeI*=
//    }
    
    
//    displayValue = str(result);
//  }
//  else if (opValue == '→') {
//    if (opValue == 'X') {
//      result = valueToCompute = X || result = valueToCompute2 = X;
//    } else if (opValue == 'Y') {
//      result = valueToCompute = Y || result = valueToCompute2 = Y;
//    } else if (opValue == 'Z') {
//      result = valueToCompute = Z || result = valueToCompute2 = Z;
//    }
//    displayValue = str(result);
//  }
  else if (opValue == 'n') {
    if (firstNum) {
      valueToComputeI = valueToComputeI*-1;
      displayValue =str(valueToComputeI);
    } else {
      valueToComputeI2 = valueToComputeI2*-1;
      displayValue = str(valueToComputeI);
    }
  }
  if (firstNum) {
    valueToCompute = displayValue;
  } else {
    valueToCompute = displayValue;
    valueToCompute2 = "";
  }
}


void keyPressed() {
  if (key == '1') {
    handleKeyPressNum("1");
  } else if (key == '2') {
    handleKeyPressNum("2");
  } else if (key == '3') {
    handleKeyPressNum("3");
  } else if (key == '4') {
    handleKeyPressNum("4");
  } else if (key == '5') {
    handleKeyPressNum("5");
  } else if (key == '6') {
    handleKeyPressNum("6");
  } else if (key == '7') {
    handleKeyPressNum("7");
  } else if (key == '8') {
    handleKeyPressNum("8");
  } else if (key == '9') {
    handleKeyPressNum("9");
  } else if (key == 'C') {
    handleKeyPressOp("C");
  } else if (key == '=' || keyCode == RETURN || keyCode == ENTER)
  handleKeyPressOp("=");
}


void handleKeyPressNum(String keyPress) {
  if (firstNum) {
    valueToCompute += keyPress;
    displayValue = valueToCompute;
  } else {
    valueToCompute2 += keyPress;
    displayValue = valueToCompute;
  }
}

void handleKeyPressOp(String keyPress) {
  if (keyPress == "C") {
    displayValue = "0";
    opValue = 'C';
    valueToCompute = "";
    valueToCompute2 = "";
    valueToComputeI = 0;
    valueToComputeI2 = 0;
    result = 0;
    firstNum = true;
  } else if (keyPress == "+") {
    if (result != 0) {
      opValue = '+';
      firstNum = false;
      displayValue = "+";
      valueToCompute2 = "";
    } else {
      opValue = '+';
      firstNum = false;
      displayValue = "+";
    }
  } 
  else if (keyPress == "-") {
    if (result != 0) {
      opValue = '-';
      firstNum = false;
      displayValue = "-";
      valueToCompute2 = "";
    } else {
      opValue = '-';
      firstNum = false;
      displayValue = "-";
    }
  }
  else if (keyPress == "*") {
    if (result != 0) {
      opValue = '*';
      firstNum = false;
      displayValue = "*";
      valueToCompute2 = "";
    } else {
      opValue = '*';
      firstNum = false;
      displayValue = "*";
    }
  }
  else if (keyPress == "÷") {
    if (result != 0) {
      opValue = '÷';
      firstNum = false;
      displayValue = "÷";
      valueToCompute2 = "";
    } else {
      opValue = '÷';
      firstNum = false;
      displayValue = "÷";
    }
  }
  else if (keyPress == "^") {
    if (result != 0) {
      opValue = '^';
      firstNum = false;
      displayValue = "^";
      valueToCompute2 = "";
    } else {
      opValue = '^';
      firstNum = false;
      displayValue = "^";
    }
  }
  else if (keyPress == "√") {
    if (result != 0) {
      opValue = '√';
      firstNum = false;
      displayValue = "√";
      valueToCompute2 = "";
    } else {
      opValue = '√';
      firstNum = false;
      displayValue = "√";
    }
  }
}



void updateDisplay() {
  fill(100, 180, 100);
  rect(10, 10, 190, 35);
  fill(0);
  textSize(25);
  text(displayValue, 20, 37);

  fill(50, 50, 55);
  noStroke();
  rect(230, 250, 100, 70);
  fill(255);
  textSize(10);
  text("val 1: " + valueToCompute, 240, 260);
  text("val 2: " + valueToCompute2, 240, 275);
  text("Result: " + result, 240, 290);
  text("operator: " + opValue, 240, 305);
}

class CalcButton {
  //class variables
  boolean isNumber;
  boolean isSpecial;
  float numButtonValue;
  String opButtonValue;
  String spButtonValue;
  float xpos, ypos;
  int boxSize = 45;
  int buttonW = 45;
  int buttonH = 45;
  boolean overBox = false;
  
  //constructor for number buttons
  CalcButton(float tempXpos, float tempYpos) {
    xpos = tempXpos;
    ypos = tempYpos;
  }
  
  CalcButton asNumber(float tempNumButtonValue, int tempW, int tempH) {
    isNumber = true;
    numButtonValue = tempNumButtonValue;
    buttonW = tempW;
    buttonH = tempH;
    return this;
  }
  
  //constructor for operator buttons
  CalcButton asOperator(String tempOpButtonValue, int tempW, int tempH) {
    opButtonValue = tempOpButtonValue;
    buttonW = tempW;
    buttonH = tempH;
    return this;
  }
  
  //constructor for special buttons
  CalcButton asSpecial(String buttonValue, int tempW, int tempH) {
    isSpecial = true;
    spButtonValue = buttonValue;
    buttonW = tempW;
    buttonH = tempH;
    return this;
  }
  
  //Draw the button on the canvas
  void display() {
    if(isNumber) {
      smooth();
      fill(100,180,100);
      stroke(100,150,200);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0);
      textSize(20);
      text(int(numButtonValue), xpos+15, ypos+30);
    } else if (isSpecial) {
      fill(150,150,100);
      stroke(100,150,170);
      strokeWeight(2);
      rect(xpos, ypos, boxSize, boxSize, 10);
      fill(0);
      textSize(20);
      text(spButtonValue, xpos+15, ypos+30);
    } else {
      fill(150,150,100);
      stroke(100,150,170);
      strokeWeight(2);
      rect(xpos, ypos, boxSize, boxSize, 10);
      fill(0);
      textSize(20);
      text(opButtonValue, xpos+15, ypos+30);
    }
  }
  
  //Handle mouse actions
  void clickButton() {
    overBox = mouseX > xpos && mouseX < xpos+boxSize && mouseY > ypos && mouseY < ypos+boxSize;
  }
}

