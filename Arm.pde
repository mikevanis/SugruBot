import java.util.LinkedList.*;

class Arm {
  LinkedList<Segment> segments = new LinkedList<Segment>();
  PVector target;
  
  Arm(int numOfSegs, int segLength, PVector origin, float weight) {
    
    // Instantiate segments
    for(int i=0; i<numOfSegs; i++) {
      segments.addLast(new Segment(segLength, origin, 0, weight*i));
    }
  }
  
  void update(PVector dest) {
    target = segments.get(0).reach(dest);
    for(int i=1; i<segments.size(); i++) {
      target = segments.get(i).reach(target);
    }
  }
}

