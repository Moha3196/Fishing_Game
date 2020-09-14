class Fish {

  PVector location = new PVector(0, 0);
  PVector velocity= new PVector(0, 0);
  PVector acceleration = new PVector(0, 0);
  boolean catched = false;
  int fr = 15;

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
    if (location.y+20 > height)
      velocity.set(velocity.x, -velocity.y);
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
    //Makes the Fish bounce of the top wall
    if (location.y-10 < 190) {
      velocity.set(velocity.x, -velocity.y);
      location.set(location.x, 190+11 );
    }

    for (int i = 0; i < f.length; i++) {
      float distX = landingPosX - f[i].location.x;
      float distY = landingPosY - f[i].location.y;
      float distance = sqrt( (distX*distX) + (distY*distY) );
      //println(distance, bb1.location.x, bb1.location.y);
      if (distance <= (landingRadius+fr)) {
        f[i].location.x += 2000;
        f[i].location.y += 2000;
        thrown = false;
        amountCatched += 1;
      }
    }
  }



  void display() {
    fill(0, 51, 102);
    stroke(0, 51, 102);
    ellipse(location.x, location.y, fr*2, fr*2);
  }
}
