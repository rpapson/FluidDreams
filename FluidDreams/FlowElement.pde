class FlowElement {
  PVector center;
  PVector flow;
  int gridSize;
  
  FlowElement(float t_x, float t_y, int t_size){
    center = new PVector(t_x,t_y);
    gridSize = t_size;
  }
  
  void display(){
    rectMode(CENTER);
    noFill();
    stroke(255);
    pushMatrix();
    translate(center.x,center.y);
    rect(0,0,gridSize,gridSize);
    scale(2);
    rotate(flow.heading());
    line(-5,0,5,0);
    line(5,0,3,-3);
    line(5,0,3,3);
    popMatrix();
  }
  
}