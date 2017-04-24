class Particle{
  PVector location;
  PVector velocity;
  PVector pLocation;
    
  Particle(){
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(-20,20),random(-20,20));
    velocity.setMag(5);
    
    pLocation = new PVector(0,0);
  }
  
  void display(){
    fill(255,15);
 //   ellipse(location.x,location.y,3,3);
 strokeWeight(1);
stroke(255);
  line(location.x, location.y, pLocation.x,pLocation.y);
  }

   void update(){
    pLocation.x = location.x;
    pLocation.y = location.y;

    location.add(velocity);
    //    print(PVector.dist(location,pLocation));
  }
  void checkEdges(){
    if(location.x<0){
    location.x = width;
  }
    else if(location.x>width){
    location.x = 0;
  }
    else if(location.y<0){location.y = height;}
    else if(location.y>height){location.y = 0;}
  }
}