boolean FishInfo = false;
int B = 25;
int H = 150; 
int d = 220;
int ChooseMap = random(1)>0.5?1:2;
int ChooseYLocation = random(1)>0.5?244:559;

void MiniGameScreen() {
  background(0, 0, 255);
  if (ChooseMap == 1) {
    for (float i = 0; i < width; i += d) {
      //Draws Planks
      fill(210, 105, 30);
      rect(i+d, 11.5, B, H);
      rect(i+d*1.5, 19+H, B, H);
      rect(i+d, 26.5+H*2, B, H);
      rect(i+d*1.5, 34+H*3, B, H);
      rect(i+d, 41.5+H*4, B, H);

      //Makes the Fish get away by hitting the first row of planks
      if (FISH[0].location.y+15 >= 11.5 && FISH[0].location.y-15 <= 11.5+H*1 && FISH[0].location.x >= i+d && FISH[0].location.x <= i+d+B) {
        MiniGameReset();
      }
      if (FISH[0].location.x+15 >= i+d && FISH[0].location.x-15 <= i+d+B && FISH[0].location.y >= 11.5 && FISH[0].location.y <= 11.5+H*1) {
        MiniGameReset();
      }

      //Makes the Fish get away by hitting the second row of planks
      if (FISH[0].location.y+15 >= 19+H*1 && FISH[0].location.y-15 <= 19+H*2 && FISH[0].location.x >= i+d*1.5 && FISH[0].location.x <= i+d*1.5+B) {
        MiniGameReset();
      }
      if (FISH[0].location.x+15 >= i+d*1.5 && FISH[0].location.x-15 <= i+d*1.5+B && FISH[0].location.y >= 19+H*1 && FISH[0].location.y <= 19+H*2) {
        MiniGameReset();
      }

      //Makes the Fish get away by hitting the third row of planks
      if (FISH[0].location.y+15 >= 26.5+H*2 && FISH[0].location.y-15 <= 26.5+H*3 && FISH[0].location.x >= i+d && FISH[0].location.x <= i+d+B) {
        MiniGameReset();
      }
      if (FISH[0].location.x+15 >= i+d && FISH[0].location.x-15 <= i+d+B && FISH[0].location.y >= 26.5+H*2 && FISH[0].location.y <= 26.5+H*3) {
        MiniGameReset();
      }

      //Makes the Fish get away by hitting the fourth row of planks
      if (FISH[0].location.y+15 >= 34+H*3 && FISH[0].location.y-15 <= 34+H*4 && FISH[0].location.x >= i+d*1.5 && FISH[0].location.x <= i+d*1.5+B) {
        MiniGameReset();
      }
      if (FISH[0].location.x+15 >= i+d*1.5 && FISH[0].location.x-15 <= i+d*1.5+B && FISH[0].location.y >= 34+H*3 && FISH[0].location.y <= 34+H*4) {
        MiniGameReset();
      }

      //Makes the Fish get away by hitting the fifth row of planks
      if (FISH[0].location.y+15 >= 41.5+H*4 && FISH[0].location.y-15 <= 41.5+H*5 && FISH[0].location.x >= i+d && FISH[0].location.x <= i+d+B) {
        MiniGameReset();
      }
      if (FISH[0].location.x+15 >= i+d && FISH[0].location.x-15 <= i+d+B && FISH[0].location.y >= 41.5+H*4 && FISH[0].location.y <= 41.5+H*5) {
        MiniGameReset();
      }
    }
  } 
  if (ChooseMap == 2) {
    for (float i = 0; i < width; i += d) {
      //Draws Planks
      fill(210, 105, 30);
      rect(i+d*1.5, 11.5, B, H);
      rect(i+d, 19+H, B, H);
      rect(i+d*1.5, 26.5+H*2, B, H);
      rect(i+d, 34+H*3, B, H);
      rect(i+d*1.5, 41.5+H*4, B, H);

      //Makes the Fish get away by hitting the first row of planks
      if (FISH[0].location.y+15 >= 11.5 && FISH[0].location.y-15 <= 11.5+H*1 && FISH[0].location.x >= i+d*1.5 && FISH[0].location.x <= i+d*1.5+B) {
        MiniGameReset();
      }
      if (FISH[0].location.x+15 >= i+d*1.5 && FISH[0].location.x-15 <= i+d*1.5+B && FISH[0].location.y >= 11.5 && FISH[0].location.y <= 11.5+H*1) {
        MiniGameReset();
      }

      //Makes the Fish get away by hitting the second row of planks
      if (FISH[0].location.y+15 >= 19+H*1 && FISH[0].location.y-15 <= 19+H*2 && FISH[0].location.x >= i+d && FISH[0].location.x <= i+d+B) {
        MiniGameReset();
      }
      if (FISH[0].location.x+15 >= i+d && FISH[0].location.x-15 <= i+d+B && FISH[0].location.y >= 19+H*1 && FISH[0].location.y <= 19+H*2) {
        MiniGameReset();
      }

      //Makes the Fish get away by hitting the third row of planks
      if (FISH[0].location.y+15 >= 26.5+H*2 && FISH[0].location.y-15 <= 26.5+H*3 && FISH[0].location.x >= i+d*1.5 && FISH[0].location.x <= i+d*1.5+B) {
        MiniGameReset();
      }
      if (FISH[0].location.x+15 >= i+d*1.5 && FISH[0].location.x-15 <= i+d*1.5+B && FISH[0].location.y >= 26.5+H*2 && FISH[0].location.y <= 26.5+H*3) {
        MiniGameReset();
      }

      //Makes the Fish get away by hitting the fourth row of planks
      if (FISH[0].location.y+15 >= 34+H*3 && FISH[0].location.y-15 <= 34+H*4 && FISH[0].location.x >= i+d && FISH[0].location.x <= i+d+B) {
        MiniGameReset();
      }
      if (FISH[0].location.x+15 >= i+d && FISH[0].location.x-15 <= i+d+B && FISH[0].location.y >= 34+H*3 && FISH[0].location.y <= 34+H*4) {
        MiniGameReset();
      }

      //Makes the Fish get away by hitting the fifth row of planks
      if (FISH[0].location.y+15 >= 41.5+H*4 && FISH[0].location.y-15 <= 41.5+H*5 && FISH[0].location.x >= i+d*1.5 && FISH[0].location.x <= i+d*1.5+B) {
        MiniGameReset();
      }
      if (FISH[0].location.x+15 >= i+d*1.5 && FISH[0].location.x-15 <= i+d*1.5+B && FISH[0].location.y >= 41.5+H*4 && FISH[0].location.y <= 41.5+H*5) {
        MiniGameReset();
      }
    }
  }
  FISH[0].move();
  FISH[0].display();

  //Makes the Fish bounce of the ground
  if (FISH[0].location.y+20 > height) {
    FISH[0].location.set(FISH[0].location.x, 0+100);
  }
  //Makes the Fish bounce of the top wall
  if (FISH[0].location.y-20 < 0) {
    FISH[0].location.set(FISH[0].location.x, height-100);
  }

  //Makes the Fish bounce of the right wall
  if (FISH[0].location.x+20 > width) {
    stage = 2;
    amountCatched += 1;
    fishCatch = 0;
    f.remove(catchedIndex);
    FISH[0].location.x = d/4;
    FISH[0].location.y = random(1)>0.5?244:559;
    FISH[0].velocity.x = 0;
    ChooseMap = random(1)>0.5?1:2;
    fr.thrown = false;
    FishInfo = true;
  }

  font = createFont("Verdana", 48);
  textFont(font);
  if (FISH[0].velocity.x == 0 && FISH[0].velocity.y == 0) {
    textAlign(CENTER);
    fill(0);
    rect(width/4, height/3-50, width/2, 66.7);
    fill(255);
    text("Press any key to start", width/2, height/3);
  }
}

//Function the Resets the Mini Game
void MiniGameReset() {
  stage = 2;
  fishCatch = 0;
  FISH[0].location.x = d/4;
  FISH[0].location.y = random(1)>0.5?244:559;
  FISH[0].velocity.x = 0;
  ChooseMap = random(1)>0.5?1:2;
  fr.thrown = false;
  f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
  f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
}
