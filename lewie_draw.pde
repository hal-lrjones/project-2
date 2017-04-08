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
}
//makes the bace of the program, draws a line when mouse pressed
void mouseline() {
  if(mousePressed) {
  strokeWeight(s);
  stroke(r,g,b);
  line(mouseX,mouseY,pmouseX,pmouseY);
  }
}
//creates the button and the action that changes color of line
void color1() {
  noStroke();
  fill(200,200,200);
  rect(0,0,width,60,7);
  noStroke();
  fill(255,255,255);
  rect(10,10,40,40,7); 
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
  noStroke();
  fill(255,0,0);
  rect(55,10,40,40,7); 
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
  noStroke();
  fill(227,21,193);
  rect(100,10,40,40,7); 
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
  noStroke();
  fill(#1519E3);
  rect(145,10,40,40,7); 
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
void clearScreen() {
  noStroke();
  fill(200,200,200);
  rect(width/2-400,height-60,800,60,10);
  noStroke();
  fill(#307CE3);
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