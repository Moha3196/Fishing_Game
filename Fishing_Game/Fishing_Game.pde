PImage startscreen; 
Fisher fs; 
FishingRod fr;
Background bg;
float landingPosX, landingPosY;
float landingRadius = 5; 
int amountCatched = 0;
int amount = 10;
Fish[] f = new Fish[amount];
boolean thrown = false;
int catchTime=0;
int changeColourGY = 0;
int changeColourYR = 0;
int fishCatch = 0;
int stage;

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
    f[i]= new Fish((int)random(50, width-50), (int)random(240, height-65), random(2, 5), random(2, 5));
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

  for (int i = 0; i <amount; i++) {
    f[i].move();
    f[i].display();
    f[i].collision();
  }
  fr.display();



  if (key == 'f' || key == 'F') {
    fr.thrown = false;
  }
}
}
