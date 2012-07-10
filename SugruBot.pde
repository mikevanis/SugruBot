Arm arm0 = new Arm(new PVector(300, 300), 100);

void setup() {
  size(600, 600);
  smooth();
}

void draw() {
  background(0);
  stroke(255);
  
  // draw first line
  arm0.updateAngle(48);
}
