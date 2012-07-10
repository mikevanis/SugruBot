class Arm {
  PVector start;
  PVector end;
  float angle;
  float armLength;

  Arm(PVector origin, float len, float deg) {
    start = origin;
    armLength = len;
    angle = 0;
    calcEnd();
  }
  
  // Draw a line rotated at different kinds of 
  void drawLine(float deg) {
    angle = radians(deg);
    calcEnd();
    line(start.x, start.y, end.x, end.y);
  }
  
  // Calculate the end point of the arm in coordinates and update the PVector
  void calcEnd() {
    float endX = start.x + cos(angle) * armLength;
    float endY = start.y - sin(angle) * armLength;
    end = new PVector(endX, endY);
  }
  
  // Sets the origin to a new PVector
  void setOrigin(PVector newOrigin) {
    start = newOrigin;
  }

  // Returns the angle of the arm.
  float getAngle() {
    return degrees(angle);
  }

  // Returns the origin of the arm.
  PVector getStart() {
    return start;
  }

  // Returns the destination of the arm.
  PVector getEnd() {
    return end;
  }
  
  // Returns the arm's length.
  float getLength() {
    return armLength;
  }
}

