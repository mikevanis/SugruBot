int numSegments = 2;
float[] x = new float[numSegments];
float[] y = new float[numSegments];
float[] angle = new float[numSegments];
float segLength = 400;

void setup() {
  size(600, 600);
  smooth();
  strokeWeight(20.0);
  stroke(0, 100);
  x[x.length-1] = 0;
  y[x.length-1] = height;
}

void draw() {
  background(226);
  cursor(CROSS);
}
