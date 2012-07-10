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

void moveHandTo(int x, int y) {
  PVector origin = arm0.getStart();
  
  // Calculate distance between hand's origin and destination
  float distance = sqrt(sq(origin.y - origin.x) + sq(y-x));
  
  // Calculate all angles
  float a = acos((sq(distance) + sq(arm0.getLength()) - sq(arm1.getLength())) / (2 * distance * arm0.getLength()));
  float b = acos((sq(arm1.getLength()) + sq(arm0.getLength()) - sq(distance)) / (2 * arm1.getLength() * arm0.getLength()));
  float c = 180 - (a + b);
}
