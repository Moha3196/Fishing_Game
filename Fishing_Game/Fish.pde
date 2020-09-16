class Fish {

  PVector location = new PVector(0, 0);
  PVector velocity= new PVector(0, 0);
  PVector acceleration = new PVector(0, 0);
  boolean catched = false;
  int fR = 15;

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

    //Fish Fishes;
    for (int i = f.size()-1; i>=0; i--) {
      Fish Fishes = f.get(i);
      float distX = landingPosX - Fishes.location.x;
      float distY = landingPosY - Fishes.location.y;
      float distance = sqrt( (distX*distX) + (distY*distY) );
      if (distance <= (landingRadius+fR) && fishCatch == 0) {
        fishCatch = 1;
        catchedIndex = i;
        Fishes.location.x = landingPosX;
        Fishes.location.y = landingPosY;
        Fishes.velocity.x = 0;
        Fishes.velocity.y = 0;
        fr.R = 0;
        fr.G = 0;
        fr.B = 0;
        println("catched index: " + i);
      }

      if (fishCatch == 1) {
        if (fr.G < 255 && fr.R == 0) {
          if ((millis() - catchTime) > 100) {
            fr.G += 10;
            catchTime = millis();
          }
        }

        if (fr.G > 255 && fr.R < 255) {
          if ((millis() - changeColourGY) > 100) {
            fr.R += 10;
            changeColourGY = millis();
          }
        }

        if (fr.R > 255) {
          if ((millis() - changeColourYR) > 100) {
            fr.G -= 10;
            changeColourYR = millis();
          }
        }

        if (timesStalled == 3) {
          println("removed index: " + i);
          f.remove(catchedIndex);
          fr.thrown = false;
          fr.R = 0;
          fr.G = 0;
          fr.B = 0;
          amountCatched += 1;
          fishCatch = 0;
          timesStalled = 0;
        }
      }
    }
  }


  void display() {
    fill(0, 51, 102);
    stroke(0, 51, 102);
    ellipse(location.x, location.y, fR*2, fR*2);
  }
}
