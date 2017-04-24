class FlowField {
  FlowElement[][] fieldPoints;
  int numX;
  int numY;

  FlowField(int t_numX, int t_numY, int t_size) {
    numX = t_numX;
    numY = t_numY;
    fieldPoints = new FlowElement[t_numY][t_numX];
    for (int i=0; i<t_numY; i++) {
      for (int j=0; j<t_numX; j++) {
        fieldPoints[i][j] = new FlowElement(j*t_size+t_size/2, i*t_size+t_size/2, t_size);
                fieldPoints[i][j].flow = new PVector(0,0);
      }
    }
  }


  void update(float t_inc) {
    float yoff = 0;
    for (int i = 0; i < numY; i++) {
      float xoff=0;
      for (int j = 0; j < numX; j++) {
        float theta = map(noise(yoff, xoff, zoff), 0, 1.0, 0, 2*TWO_PI);
  //      println(theta);
        fieldPoints[i][j].flow.set(cos(theta), sin(theta));
        xoff += t_inc;
      }
      yoff += t_inc;
    }
  }

  void display() {
    for (int i=0; i<numY; i++) {
      for (int j=0; j<numX; j++) {
        fieldPoints[i][j].display();
      }
    }
  }
}