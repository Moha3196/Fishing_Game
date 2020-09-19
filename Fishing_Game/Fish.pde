class Fish {
  PVector location = new PVector(0, 0);
  PVector velocity = new PVector(0, 0);
  PVector acceleration = new PVector(0, 0);
  boolean catched = false;
  int fR = 15;
  PVector velocityB4Catch = new PVector(0, 0);
  
  //Fish Constructor 
  Fish(int lx, int ly, float vx, float vy, float vxb4, float vyb4) {
    location.set(lx, ly);  
    velocity.set(vx, vy);
    velocityB4Catch.set(vxb4, vyb4);
  }

  //Function that makes the Fish move
  void move() {
    location.add(velocity); 
    //velocity.add(acceleration);
  }

  //Function that detects Collision
  void collision() {
    //Makes the Fish bounce of the bottom wall
    if (location.y+20 > height) {
      velocity.set(velocity.x, -velocity.y);
    }
    //Makes the Fish bounce of the right wall
    if (location.x+20 > width) {
      velocity.set(-velocity.x, velocity.y);
      location.set(width-21, location.y);
    }
    //Makes the Fish bounce of the left wall
    if (location.x-20 < 0) {
      velocity.set(-velocity.x, velocity.y);
      location.set(0+21, location.y);
    }
    //Makes the Fish bounce of bridge
    if (location.y-10 < 190) {
      velocity.set(velocity.x, -velocity.y);
      location.set(location.x, 190+11 );
    }

    //Detects Collision with Fishing Rod, and if there is Collision then the Minigame starts
    for (int i = f.size()-1; i>=0; i--) {
      Fish Fishes = f.get(i);
      float distX = landingPosX - Fishes.location.x;
      float distY = landingPosY - Fishes.location.y;
      float distance = sqrt( (distX*distX) + (distY*distY) );
      if (distance <= (landingRadius+fR) && fishCatch == 0) {
        fishCatch = 1;
        catchedIndex = i;
        Fishes.velocityB4Catch.x = Fishes.velocity.x;
        Fishes.velocityB4Catch.y = Fishes.velocity.y;
        Fishes.location.x = landingPosX;
        Fishes.location.y = landingPosY;
        Fishes.velocity.x = 0;
        Fishes.velocity.y = 0;
        stage = 3;
        println("catched index: " + i);
      }
    }
  }

  //Draws the Fish, depending on which way its moving
  void display() {
    if (velocity.x < 0) {
      imageMode(CENTER);
      image(fishL, location.x, location.y);
    } else {
      imageMode(CENTER);
      image(fishR, location.x, location.y);
    }
  }
}
