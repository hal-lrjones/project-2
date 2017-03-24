int b = 100;
int a = 5;
int c = 10;
void setup() {
  size(1000,900);
  background(b,b,b);
}
//when mouse is pressed creates a erase thing
void draw() {
  if(mousePressed) {
    strokeWeight(30);
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
}