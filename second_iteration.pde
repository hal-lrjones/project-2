int x=0; //background color
int r=255; //red color value for line
int g=255; //green color value for line
int b=255; // blue color value for line
int s=40; //the strokeWeight for the line
void setup() {
  fullScreen();
  background(x,x,x);
}

void draw() {
  mouseline();
  color1();
  color2();
  color3();
  color4();
  clearScreen();
  drawSizeUp();
  drawSizeDown();
  eraser();
  //if statements to make sure draw size is not to small or big
  if(s>80) {
    s=100;
  }
  if(s<2) {
    s=2;
}
}
//makes the bace of the program, draws a line when mouse pressed
void mouseline() {
  if(mousePressed) {
  strokeWeight(s);
  stroke(r,g,b);
  line(mouseX,mouseY,pmouseX,pmouseY);
  }
}
/////////////////////////////////////////////buttons for changeing color///////////////////////////////////////////////////////////////////////////////////////////////
//creates the button and the action that changes color of line, each void color# is a differnt code for a button
void color1() {
  //the background bar
  noStroke();
  fill(150,150,150);
  rect(0,0,width,60,7);
  //the rect
  noStroke();
  fill(255,255,255);
  rect(10,10,40,40,7); 
  //the button
 if(mouseX > 10) {
   if(mouseX <50) {
     if(mouseY > 10) {
       if(mouseY <50) {
         if(mousePressed) {
           r=255;
           g=255;
           b=255;
         }
       }
     }
   }
 }
}
void color2() {
  // the rect
  noStroke();
  fill(255,0,0);
  rect(55,10,40,40,7); 
  //the botton
 if(mouseX > 55) {
   if(mouseX <95) {
     if(mouseY > 10) {
       if(mouseY <50) {
         if(mousePressed) {
           r=255;
           g=0;
           b=0;
         }
       }
     }
   }
 }
}
void color3() {
  //the rect
  noStroke();
  fill(227,21,193);
  rect(100,10,40,40,7); 
  // the botton
 if(mouseX > 100) {
   if(mouseX <140) {
     if(mouseY > 10) {
       if(mouseY <50) {
         if(mousePressed) {
           r=227;
           g=21;
           b=193;
         }
       }
     }
   }
 }
}
void color4() {
  //the rect
  noStroke();
  fill(#1519E3);
  rect(145,10,40,40,7); 
  //the botton itself
 if(mouseX > 145) {
   if(mouseX <180) {
     if(mouseY > 10) {
       if(mouseY <50) {
         if(mousePressed) {
           r=21;
           g=25;
           b=227;
         }
       }
     }
   }
 }
}
////////////////////////////////////the bottom bar (clear, strokeWieght and more)/////////////////////////////////////////////////////////
void clearScreen() {
  //background bar
  noStroke();
  fill(150,150,150);
  rect(width/2-400,height-60,800,60,10);
  //text on the button
 // text("Clear",width/2-30,
  //the rect
  noStroke();
  fill(#8CEAD8);
  //the botton itself
  rect(width/2-40,height-50,80,40,7); 
 if(mouseX > width/2-40) {
   if(mouseX <width/2+40) {
     if(mouseY > height-50) {
       if(mouseY <height+10) {
         if(mousePressed) {
           background(x,x,x);
         }
       }
     }
   }
 }
}
void drawSizeDown() {
  //the rect
  noStroke();
  fill(#8CEAD8);
   rect(width/2-90,height-50,40,40,7);
  //the ellipse
  noStroke();
  fill(0,0,0);
  ellipse(width/2-70,height-30,5,5);
  //the button
  if(mouseX > width/2-90) {
   if(mouseX < width/2+50) {
      if(mouseY > height-50) {
        if(mouseY < height+10) {
          if(mousePressed==true) {
           s=s-2;
          }
        }
      }
   }
  }
}
void drawSizeUp() {
  //the rect
  noStroke();
  fill(#8CEAD8);
   rect(width/2-140,height-50,40,40,7);
  //the ellipse
  noStroke();
  fill(0,0,0);
    ellipse(width/2-120,height-30,38,38);
  //the button
  if(mouseX > width/2-140) {
    if(mouseX < width/2-100) {
      if(mouseY > height-50) {
        if(mouseY < height+10) {
          if(mousePressed==true) {
             s=s+2;
          }
        }
      }
    }
  }
}

void eraser() {
  noStroke();
  fill(#8CEAD8);
  rect(width/2+50,height-50,40,40,7);
}