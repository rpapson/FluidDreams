int gridSize = 50; //<>// //<>//
int numXElements = 20;
int numYElements = 15;
int numParticles = 500;

Boolean displayGrid = false;

float increment;
float zoff;

FlowField field;
ParticleSystem parts;


void settings() {
  size(numXElements*gridSize, numYElements*gridSize);
}

void setup() {

  field = new FlowField(numXElements, numYElements, gridSize);
  parts = new ParticleSystem(numParticles);
 //   frameRate(2);
}

void draw() {
  background(0);

  field.update(increment);
  zoff += 0.005;
  parts.update();
//  parts.checkEdges();
  parts.display();
    parts.checkEdges();
  if (displayGrid) {
    field.display();
  }

}

void keyPressed() {
  if (key == 'g' || key == 'G') {
    displayGrid = !displayGrid;
  }
  if (key == 'i' || key == 'I') {
    increment += 0.001;
    println("Increment = "+increment);
  }
  if (key == 'd' || key == 'D') {
    increment -= 0.001;
    println("Increment = "+increment);
  }
}