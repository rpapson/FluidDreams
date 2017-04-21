int gridSize = 50; //<>//
int numXElements = 10;
int numYElements = 10;
Boolean displayGrid = true;
int count;

FlowField field;


void settings() {
  size(numXElements*gridSize, numYElements*gridSize);
}

void setup() {

  field = new FlowField(numXElements, numYElements, gridSize);
//  frameRate(2);
}

void draw() {
    background(0); //<>//

  field.update();

  if (displayGrid) {
    field.display();
  }

count++;
}

void keyPressed() {
  if (key == 'g' || key == 'G') {
    displayGrid = !displayGrid;
  }
}