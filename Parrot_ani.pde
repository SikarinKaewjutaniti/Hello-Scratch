PVector mouse, center; 
int scalar;
PImage img;
Parrot O1 = new Parrot(); 
Arrow O2 = new Arrow(); 
void setup() {
  size(400, 400);
  img = loadImage("PrT.png");
}

float distance;

void draw() {
  background(192);
  translate(350, 350);
  O1.mouseMoved();

  O2.mouseMoved();
}
class Parrot {
  void mouseMoved() {
    image(img, mouseX-400, mouseY-425);
   
  }
}
class Arrow {
  float Degree;
  void mouseMoved() {

    mouse = new PVector(mouseX, mouseY);
    center = new PVector(350,350);
    mouse.sub(center); 
    mouse.normalize(); 
    mouse.mult(30); 
    pushMatrix();
    line(0, 0, mouse.x, mouse.y);
    
    translate(mouse.x, mouse.y); 
     float a = atan2(mouse.y,mouse.x);       
      rotate(a); 
 
      line(0, 0, 20, 0);
      line(20-4, -4, 20, 0); 
      line(20-4, +4, 20, 0); 
      popMatrix();
  }
}
