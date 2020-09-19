//Function that draws the Ending Screen
void EndScreen() {
  //Shows Winning Image
  background(255);
  imageMode(CENTER);
  image(w, width/2, height/2);
  //Displays Text on Screen which tell the user what to do
  textAlign(CENTER);
  font = createFont("Verdana", 48);
  textFont(font);
  fill(0);
  rect(width/4-25, height/4-100, width/2+50, 66.7);
  fill(255);
  text("Press any key to start again", width/2, height/4-50);
}
