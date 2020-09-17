Fish[] FISH = new Fish[1];
Fisher fs; 
FishingRod fr;
Background bg;

float landingPosX, landingPosY;
float landingRadius = 5; 
int amountCatched = 0;
int amount = 10;
ArrayList<Fish> f = new ArrayList<Fish>();
boolean thrown = false;
int catchTime=0;
int changeColourGY = 0;
int changeColourYR = 0;
int fishCatch = 0;
int catchedIndex = 0;
int timesStalled = 0;
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
//PVector velocityB4Catch = new PVector(random(2, 5), random(2, 5));


void setup() { 
  fullScreen();
  //size(1280,800);
  frameRate(60);
  stage = 1;
  //tartscren = new StartScreen();
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
  //startScreen.resize(width, height);
  catchTime = millis();
  changeColourGY = millis();
  changeColourYR = millis();
  fs = new Fisher();
  bg = new Background();
  fr = new FishingRod(width/2+25, 95, 0, 0, 0, false);
  FISH[0] = new Fish(d/4, ChooseYLocation, 0, 0, 0, 0);
  for (int i =0; i<amount; i++) {
    f.add(new Fish((int)random(50, width-50), (int)random(240, height-65), random(2, 5), random(2, 5), 0, 0));
  }
}

void draw() {
  //print(mousePressed);
  if (stage == 1) {
    StartScreen();

    if (keyPressed) {
      stage = 2;
    }
  }
  if (stage == 2) {
    GamingScreen();
    //if (keyPressed && FishInfo) {
    //  FishInfo = false;
    //}
  }
  if (stage == 3) {
    MiniGameScreen();
  }
}

void mouseReleased() {
  if (150 < fr.G && fr.G < 255 && timesStalled == 0) {
    fr.G -=100;
    timesStalled += 1;
    fill(255, 0, 255);
    ellipse(landingPosX-35, landingPosY-35, 15, 15);
  }
  if (150 < fr.R && fr.R < 255 && fr.G <= 260 && timesStalled == 1) {
    fr.R -=100;
    timesStalled += 1;
    fill(255, 0, 255);
    ellipse(landingPosX-35, landingPosY-35, 15, 15);
  }
  if (fr.G < 100 && fr.G > 0 && timesStalled == 2) {
    fr.R -=100;
    timesStalled += 1;
    fill(255, 0, 255);
    ellipse(landingPosX-35, landingPosY-35, 15, 15);
  }

  if (stage == 2 && FishInfo) {
    FishInfo = false;
    randomNumber = round(random(0.5, 7.49));
    randomKilos = (int)random(3, 55);
  }
}

void keyPressed() {
  final int k = keyCode;

  if (stage == 3 && FISH[0].velocity.x == 0 && FISH[0].velocity.y == 0) {
    FISH[0].velocity.x = 2;
  }

  if (k == 'f' || k == 'F') {
    fr.thrown = false;
  }

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
