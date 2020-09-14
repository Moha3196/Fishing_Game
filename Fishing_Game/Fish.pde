class Fish {

  PVector location = new PVector(0, 0);
  PVector velocity= new PVector(0, 0);
  PVector acceleration = new PVector(0, 0);
  boolean catched = false;

  Fish(int lx, int ly, float vx, float vy) {
    location.set(lx, ly);  
    velocity.set(vx, vy);
  }

  void move() {
    location.add(velocity); 
    //velocity.add(acceleration);
  }


  void collision() {
    //Makes the Fish bounce of the ground
    if (location.y+20 > height-48.75)
      velocity.set(velocity.x, -velocity.y);
    //Makes the Fish bounce of the right wall
    if (location.x+30 > width) {
      velocity.set(-velocity.x, velocity.y);
      location.set(width-31, location.y);
    }
    //Makes the Fish bounce of the left wall
    if (location.x-30 < 0) {
      velocity.set(-velocity.x, velocity.y);
      location.set(0+31, location.y);
    }
    //Makes the Fish bounce of the top wall
    if (location.y-10 < 190) {
      velocity.set(velocity.x, -velocity.y);
      location.set(location.x, 190+11 );
    }
  }



  void display() {
    fill(0, 51, 102);
    stroke(0, 51, 102);
    ellipse(location.x, location.y, 30, 20);
  }
}
