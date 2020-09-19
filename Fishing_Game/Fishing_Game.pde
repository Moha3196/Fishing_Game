//Fishing Game - Lavet af Mohammad, Lukas og Alexander
Fish[] FISH = new Fish[1];
Fisher fs; 
FishingRod fr;

float landingPosX, landingPosY;
float landingRadius = 5; 
int amountCatched = 0;
int amount = 10;
ArrayList<Fish> f = new ArrayList<Fish>();
boolean thrown = false;
boolean restart = false;
int fishCatch = 0;
int catchedIndex = 0;
int stage;
PImage startScreen;
PImage fishL;
PImage fishR;
PImage af;
PImage bf;
PImage cf;
PImage df;
PImage ef;
PImage ff;
PImage gf;
PImage w;
PFont font;

void setup() { 
  //fullScreen();
  size(1280, 800);
  frameRate(60);
  stage = 4;
  //Loads the Images to the variables
  startScreen = loadImage("Startscreen.jpg");
  fishL = loadImage("fiskV.png");
  fishR = loadImage("fiskH.png");
  af = loadImage("Gede.jpg");
  bf = loadImage("Aborre.jpg");
  cf = loadImage("Hvidhaj.jpg");
  df = loadImage("Oerred.jpg");
  ef = loadImage("Aal.jpg");
  ff = loadImage("Torsk.jpg");
  gf = loadImage("Guldfisk.jpg");
  w = loadImage("win.jpg");
  //Instantiates Objects
  fs = new Fisher();
  fr = new FishingRod(width/2+25, 95, false);
  FISH[0] = new Fish(d/4, ChooseYLocation, 0, 0, 0, 0);
  for (int i =0; i<amount; i++) {
    f.add(new Fish((int)random(50, width-50), (int)random(240, height-65), random(2, 5), random(2, 5), 0, 0));
  }
}

void draw() {
  //Changes the screens
  if (stage == 1) {
    StartScreen();
    if (keyPressed) {
      stage = 2;
    }
  }

  if (stage == 2) {
    GamingScreen();
  }

  if (stage == 3) {
    MiniGameScreen();
  }

  if (stage == 4) {
    EndScreen();
  }

  if (amountCatched == amount) {
    stage = 4;
  }
}

void mouseReleased() {
  //Removes the Info about fish
  if (stage == 2 && FishInfo) {
    FishInfo = false;
    randomNumber = round(random(0.5, 7.49));
    randomKilos = (int)random(3, 55);
  }
}

void keyPressed() {
  final int k = keyCode;

  //Starts the Fish Mini Game
  if (stage == 3 && FISH[0].velocity.x == 0 && FISH[0].velocity.y == 0) {
    FISH[0].velocity.x = 2;
  }

  //Restarts Whole Fishing Game
  if (stage == 4 && keyPressed) {
    int extraFish = amount - f.size();
    amountCatched = 0;
    FishInfo = false;
    stage = 2;
    restart = true;
    if (restart == true) {
      for (int i = 0; i < extraFish; i++) {
        f.add(new Fish((int)random(50, width-50), (int)random(240, height-65), random(2, 5), random(2, 5), 0, 0));
      }
      if (f.size() == amount) {
        restart = false;
      }
    }
  }

  //Restores the Fishing Rod
  if (k == 'f' || k == 'F') {
    fr.thrown = false;
  }

  //Moves the Fish Depending on the direction in the Y-Axis
  if (k == 'W') {
    if (FISH[0].velocity.y <= 0) { 
      FISH[0].velocity.y = -3;
    }
  } else if (k == 'S') {
    if (FISH[0].velocity.y >= 0) { 
      FISH[0].velocity.y =  3;
    }
  }

  if (k == UP) {
    if (FISH[0].velocity.y <= 0) { 
      FISH[0].velocity.y = -3;
    }
  } else if (k == DOWN) {
    if (FISH[0].velocity.y >= 0) { 
      FISH[0].velocity.y =  3;
    }
  }
}

void keyReleased() {
  final int k = keyCode;

  //Stops the Fish from moving in the Y-Axis 
  if (k == 'W') {
    if (FISH[0].velocity.y <= 0) { 
      FISH[0].velocity.y = 0;
    }
  } else if (k == 'S') {
    if (FISH[0].velocity.y >= 0) { 
      FISH[0].velocity.y =  0;
    }
  }

  if (k == UP) {
    if (FISH[0].velocity.y <= 0) { 
      FISH[0].velocity.y = 0;
    }
  } else if (k == DOWN) {
    if (FISH[0].velocity.y >= 0) { 
      FISH[0].velocity.y =  0;
    }
  }
}
