int b = 100;
int a = 5;
int c = 10;
void setup() {
  size(1000,900);
  background(b,b,b);
}
//writes text on screen for user to understand how it works
void draw() {
  textSize(15);
  text("press and hold C to draw in red. press and hold V to draw in green. press mouse and hold to activate erreser. press space bar to clear.", 10,15);
  textSize(15);
  text("use w to make line thicker. use s to make it thiner", 10,30);
  //when mouse is pressed creates a erase thing
  if(mousePressed) {
    strokeWeight(40);
  stroke(b,b,b);
  line(mouseX,mouseY,pmouseX,pmouseY);
}
//clear function
if(keyPressed==true) {
  if(key== ' ') {
  background(b,b,b);
}
}
//red line maker
if(keyPressed) {
  if(key== 'c') {
    strokeWeight(c);
    stroke(255,0,0);
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
}
//green line maker
if(keyPressed) {
  if(key== 'v') {
    strokeWeight(c);
    stroke(0,255,0);
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
}
//blue line maker
if(keyPressed) {
  if(key== 'b') {
    strokeWeight(c);
    stroke(0,0,255);
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
}

if(keyPressed) {
 if(key== 'w') {
 c= c + 1;
if(c>100){
 c=100;
 }
 }
 }
 if(keyPressed) {
   if(key== 's') {
     c= c-1;
     if(c<15) {
       c=15;
     }
   }
   }
}
 