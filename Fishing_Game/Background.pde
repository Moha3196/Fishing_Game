class Background {


  void display() {
    //Draws the sea
    background(0, 0, 255);
    
    //Draws the bridge
    //Draws the 2 planks Under bridge
    fill(170, 43, 21);
    stroke(1);
    rect(0, 85-35, width, 30);
    rect(0, 135-35, width, 30);

    for (float i = 0; i < width; i += 27) {
      //Draws the legs of the bridge
      fill(170, 43, 21);
      ellipse(i*4+12.5, 212.5-35, 25, 25);
      rect(i*4, 187.5-35, 25, 25);
      noStroke();
      rect(i*4+0.5, 187.5-35, 24, 26);
      stroke(1);
      ellipse(i*4+12.5, 187.5-35, 25, 25);
      //Draws the Top Planks
      fill(210, 105, 30);
      rect(i, 50-35, 25, 150);
    }
  }
}
