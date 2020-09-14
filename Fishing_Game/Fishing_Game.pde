//Amount of Grass straws to be made for each GrassLane row
int AmountOfGrass = 300;

Grass[] GrassLane1 = new Grass[AmountOfGrass];
Grass[] GrassLane2 = new Grass[AmountOfGrass];
Grass[] GrassLane3 = new Grass[AmountOfGrass];
Grass[] GrassLane4 = new Grass[AmountOfGrass];

//How many pixels each new grass straw is going to be moved by
int SpaceOfGrass = 5;
//Variables that declare the start position of each grass straw
int Space1;
int Space2;
int Space3;
int Space4;

Fisher fs; 
FishingRod fr;
Background bg;
int amount = 10;
Fish[] f = new Fish[amount];

void setup() {
  fullScreen();
  //size(900,700);
  frameRate(60);
  fs = new Fisher();
  bg = new Background();
  fr = new FishingRod();
  for (int i =0; i<amount; i++) {
    f[i]= new Fish((int)random(50, width-50), (int)random(240, height-65), random(2, 5), random(2, 5));
  }

  //Constructs GrassLane1
  for (int i=0; i<GrassLane1.length; i++) { 
    GrassLane1[i] = new Grass(Space1, height-45, height-60);
    Space1 += SpaceOfGrass;
  }
  //Constructs GrassLane2
    for (int i=0; i<GrassLane2.length; i++) { 
    GrassLane2[i] = new Grass(Space2, height-30, height-44);
    Space2 += SpaceOfGrass;
  }
  //Constructs GrassLane3
    for (int i=0; i<GrassLane3.length; i++) { 
    GrassLane3[i] = new Grass(Space3, height-15, height-29);
    Space3 += SpaceOfGrass;
  }
  //Constructs GrassLane4
    for (int i=0; i<GrassLane4.length; i++) { 
    GrassLane4[i] = new Grass(Space4, height, height-14);
    Space4 += SpaceOfGrass;
  }
}


void draw() {

  bg.display();
  fs.display();
  //fr.display();
  
  for (int i = 0; i <amount; i++) {
    f[i].move();
    f[i].display();
    f[i].collision();
  }
  //stroke(0);
  fr.display();
  
  //Grass Background
  fill(0, 225, 0);
  noStroke();
  rect(0, height-45-3.75, width, 45+3.75);

  //Draws the GrassLanes
  for (int i=0; i<GrassLane1.length; i++) { 
    GrassLane1[i].GrassDraw();
  }
  for (int i=0; i<GrassLane2.length; i++) { 
    GrassLane2[i].GrassDraw();
  }
  for (int i=0; i<GrassLane3.length; i++) { 
    GrassLane3[i].GrassDraw();
  }
  for (int i=0; i<GrassLane4.length; i++) { 
    GrassLane4[i].GrassDraw();
  }
}
