class Arm {
  PVector start;
  PVector end;
  int angle;
  int armLength;

  Arm(PVector origin, int len) {
    start = origin;
    armLength = len;
    angle = 0;
    //lineAngle(start, angle, armLength);
  }
  
  // Updates the angle of the arm.
  void updateAngle(int deg) {
    lineAngle(start, deg, armLength);
  }

  // Returns the angle of the arm.
  int getAngle() {
    return angle;
  }
  
  // Returns the origin of the arm.
  PVector getStart() {
    return start;
  }

  // Returns the destination of the arm.
  PVector getEnd() {
    return end;
  }
  
  // Draw a line on the screen with a given origin, angle and length.
  void lineAngle(PVector origin, float angle, float length) {
    angle = int(radians(angle));
    int endX = int((origin.x + cos(angle) * length));
    int endY = int((origin.y - sin(angle) * length));
    end = new PVector(endX, endY);
    line(origin.x, origin.y, end.x, end.y);
  }
}

