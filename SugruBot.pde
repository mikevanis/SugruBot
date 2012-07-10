Arm arm0 = new Arm(new PVector(0, 0), 100);

void setup() {
  size(600, 600);
  smooth();
  background(0);
  stroke(255);
}

void draw() {
  // draw first line
  arm0.updateAngle(0);
}
