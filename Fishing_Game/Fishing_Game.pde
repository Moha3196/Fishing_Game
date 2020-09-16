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
//PVector velocityB4Catch = new PVector(random(2, 5), random(2, 5));


void setup() { 
  fullScreen();
  //size(900,700);
  frameRate(60);
  stage = 1;
  //tartscren = new StartScreen();
  startScreen = loadImage("Startscreen.jpg");
  //startScreen.resize(width, height);
  catchTime = millis();
  changeColourGY = millis();
  changeColourYR = millis();
  fs = new Fisher();
  bg = new Background();
  fr = new FishingRod(width/2+25, 95, 0, 0, 0, false);
  for (int i =0; i<amount; i++) {
    f.add(new Fish((int)random(50, width-50), (int)random(240, height-65), random(2, 5), random(2, 5), 0, 0));
  }
}

void draw() {
  if (stage == 1) {
    StartScreen();

    if (keyPressed) {
      stage = 2;
    }
  }
  if (stage == 2) {
    GamingScreen();
  }
}


void mousePressed() {
  if (150 < fr.G && fr.G < 255 && timesStalled == 0) {
    fr.G -=100;
    timesStalled += 1;
  }
  if (150 < fr.R && fr.R < 255 && fr.G <= 260 && timesStalled == 1) {
    fr.R -=100;
    timesStalled += 1;
  }
  if (fr.G < 100 && fr.G > 0 && timesStalled == 2) {
    fr.R -=100;
    timesStalled += 1;
  }
}

void keyPressed() {



  if (key == 'f' || key == 'F') {
    fr.thrown = false;
  }
}
