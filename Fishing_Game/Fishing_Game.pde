PImage startscreen; 
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
<<<<<<< HEAD
int catchedIndex = 0;
int timesStalled = 0;
=======
int stage;

>>>>>>> master
void setup() {  
  stage = 1;
  startscreen = loadImage("Startscreen.jpg");
  fullScreen();
  //size(900,700);
  frameRate(60);
  catchTime = millis();
  changeColourGY = millis();
  changeColourYR = millis();
  fs = new Fisher();
  bg = new Background();
  fr = new FishingRod(width/2+25, 95, 0, 0, 0, false);
  for (int i =0; i<amount; i++) {
    f.add(new Fish((int)random(50, width-50), (int)random(240, height-65), random(2, 5), random(2, 5)));
  }
}

void draw() {
  if (stage == 1){
    image(startscreen,0,0);
    textAlign(CENTER);
    text("hey",width/2,height/2 + height/10);
    text("Press any key to start",width/2 ,height/2);
    
    if(keyPressed == true){
      stage = 2;
    }
  }
  if (stage == 2){
  bg.display();
  fs.display();

  /*
  for (int i = 0; i <amount; i++) {
   for (Fish Fishes : f) {
   f = f.get(Fishes);
   f.move();
   f.display();
   f.collision();
   }*/
  for (int i = f.size()-1; i>=0; i--) {
    Fish Fisha;
    Fisha = f.get(i);
    Fisha.move();
    Fisha.display();
    Fisha.collision();
  }
  fr.display();

<<<<<<< HEAD
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
=======


>>>>>>> master
  if (key == 'f' || key == 'F') {
    fr.thrown = false;
  }
}
}
