class ParticleSystem {
  Particle[] part;
  int numParticles;

  ParticleSystem(int t_num) {
    numParticles = t_num;
    part = new Particle[t_num];
    for (int i=0; i<t_num; i++) {
      part[i] = new Particle();
    }
  }
  
  void display(){
    for(int i=0; i<numParticles; i++){
      part[i].display();
    }
  }
  
    void update(){
    for(int i=0; i<numParticles; i++){
      part[i].update();
    }
  }
  
   void checkEdges(){
    for(int i=0; i<numParticles; i++){
      part[i].checkEdges();
    }
  }
}