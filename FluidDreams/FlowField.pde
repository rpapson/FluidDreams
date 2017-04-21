class FlowField {
  FlowElement[][] fieldPoints;
  int numX;
  int numY;
  float xoff = 0;
  float yoff = 0;

  FlowField(int t_numX, int t_numY, int t_size) {
    numX = t_numX;
    numY = t_numY;
    fieldPoints = new FlowElement[t_numY][t_numX];
    for (int i=0; i<t_numY; i++) {
      for (int j=0; j<t_numX; j++) {
        fieldPoints[i][j] = new FlowElement(j*t_size+t_size/2, i*t_size+t_size/2, t_size);
      }
    }
    init();
  }

  void init() {

    for (int i = 0; i < numY; i++) {

      for (int j = 0; j < numX; j++) {
        float theta = map(noise(yoff, xoff), 0, 1.0, 0, TWO_PI);
        println(theta);
        fieldPoints[i][j].flow = new PVector(cos(theta), sin(theta));
        xoff += 0.005;
      }
      yoff += 0.005;
    }
  }

  void update() {
    for (int i = 0; i < numY; i++) {
      for (int j = 0; j < numX; j++) {
        float theta = map(noise(yoff, xoff), 0, 1.0, 0, TWO_PI);
        println(theta);
        fieldPoints[i][j].flow.set(cos(theta), sin(theta));
        xoff += 0.005;
      }
      yoff += 0.005;
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