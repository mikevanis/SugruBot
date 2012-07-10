Arm arm0;
Arm arm1;

void setup() {
  size(600, 600);
  smooth();
  
  arm0 = new Arm(new PVector(300, 300), 200, 0);
  arm1 = new Arm(arm0.getEnd(), 200, 90);
}

void draw() {
  background(0);
  stroke(255);
  
  // draw first line
  arm0.drawLine(45);
  arm1.setOrigin(arm0.getEnd());
  arm1.drawLine(arm0.getAngle() + 45);
}
