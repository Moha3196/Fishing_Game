PFont font;

void StartScreen() {
  //background(startScreen);
  image(startScreen, 0, 0, width, height);
  textAlign(CENTER);
  font = createFont("Verdana", 48);
  textFont(font);
  fill(0);
  rect(width/4, height/3-50, width/2, 66.7);
  fill(255);
  text("Press any key to start", width/2, height/3);
}
