void EnsScreen() {
  background(255);
  imageMode(CENTER);
  image(w, width/2, height/2);
  textAlign(CENTER);
  font = createFont("Verdana", 48);
  textFont(font);
  fill(0);
  rect(width/4, height/4-100, width/2, 66.7);
  fill(255);
  text("Press any key to start", width/2, height/4-50);
  
}
