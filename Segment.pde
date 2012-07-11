class Segment {
  private float x, y, a, sw;
  private int l;
  
  Segment(int segLength, PVector baseOrigin, float angle, float strWeight) {
    x = baseOrigin.x;
    y = baseOrigin.y;
    a = angle;
    sw = strWeight;
  }
  
  void drawSeg() {
    strokeWeight(sw);
    pushMatrix();
    translate(x, y);
    rotate(a);
    line(0, 0, l, 0);
    popMatrix();
  }
  
  PVector reach(PVector dest) {
    float dx = dest.x - x;
    float dy = dest.y - y;
    a = atan2(dy, dx);
    float targetX = dest.x - cos(a) * l;
    float targetY = dest.y - sin(a) * l;
    PVector target = new PVector(targetX, targetY);
    return target;
  }
  
  float getAngle() {
    return a;
  }
}
