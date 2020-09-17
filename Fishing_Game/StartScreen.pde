PFont font;
void StartScreen() {

  //background(startScreen);
  image(startScreen, 0, 0, width, height);
  textAlign(CENTER);
  font = createFont("Verdana", 48);
  textFont(font);
  stroke(1);
  strokeWeight(5);
  fill(0);
  rect(width/4, height/3-50, width/2, 66.7);
  fill(255);
  //text("hey", width/2, height/2 + height/10);
  text("Press any key to start", width/2, height/3);
}
