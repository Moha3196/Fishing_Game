int randomNumber = round(random(0.5, 7.49));
int randomKilos = (int)random(3, 55);

//Function that draws the Game Screen, where 
void GamingScreen() {
  //Displays the Background and Fishing Man
  Background();
  fs.display();

  //Updates the Fish elements 
  for (int i = f.size()-1; i>=0; i--) {
    Fish Fisha;
    Fisha = f.get(i);
    Fisha.move();
    Fisha.display();
    Fisha.collision();
  }

  //Displays the Fishing Rod
  fr.display();

  //Chooses a random fish to display
  if (FishInfo == true) {
    imageMode(CENTER);
    switch(randomNumber) {
    case 1:
      image(af, width/2, height/2);
      break;

    case 2:
      image(bf, width/2, height/2);
      break;

    case 3:
      image(cf, width/2, height/2);
      break; 

    case 4:
      image(df, width/2, height/2);
      break;

    case 5:
      image(ef, width/2, height/2);
      break; 

    case 6:
      image(ff, width/2, height/2);
      break; 

    case 7:
      image(gf, width/2, height/2);
      break;
    }

    //Displays the Randomized weight on pictures
    noStroke();
    fill(153, 217, 234);
    rect(width/2-183, height/2-138, 56, 34);
    fill(0);
    text(randomKilos, width/2-153, height/2-110);
  }
}
