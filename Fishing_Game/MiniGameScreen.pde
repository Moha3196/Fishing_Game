boolean FishInfo = false;
int B = 25;
int H = 150; 
int d = 220;
int ChooseMap = (int)random(1, 2);
int ChooseYLocation = random(1)>0.5?244:559;
int Y=0;

void MiniGameScreen() {
  background(0, 0, 255);

  println(ChooseYLocation);


  if (ChooseMap == 1) {
    for (float i = 0; i < width; i += d) {
      //Draws Planks
      fill(210, 105, 30);
      rect(i+d, 11.5, B, H);
      rect(i+d*1.5, 19+H, B, H);
      rect(i+d, 26.5+H*2, B, H);
      rect(i+d*1.5, 34+H*3, B, H);
      rect(i+d, 41.5+H*4, B, H);
    }
  } else if (ChooseMap == 2) {
    for (float i = 0; i < width; i += d) {
      //Draws Planks
      fill(210, 105, 30);
      rect(i+d*1.5, 11.5, B, H);
      rect(i+d, 19+H, B, H);
      rect(i+d*1.5, 26.5+H*2, B, H);
      rect(i+d, 34+H*3, B, H);
      rect(i+d*1.5, 41.5+H*4, B, H);
    }
  }
  FISH[0].move();
  FISH[0].display();

  //Makes the Fish bounce of the ground
  if (FISH[0].location.y+20 > height){
    FISH[0].velocity.set(FISH[0].velocity.x, -FISH[0].velocity.y);
  }
  //Makes the Fish bounce of the top wall
  if (FISH[0].location.y-10 < 0) {
    FISH[0].velocity.set(FISH[0].velocity.x, -FISH[0].velocity.y);
    FISH[0].location.set(FISH[0].location.x, +11 );
  }
  //Makes the Fish bounce of the right wall
    if (FISH[0].location.x+20 > width) {
      stage = 2;
      amountCatched += 1;
      fishCatch = 0;
      f.remove(catchedIndex);
      FISH[0].location.x = d/4;
      fr.thrown = false;
      FishInfo = true;
    }
}
