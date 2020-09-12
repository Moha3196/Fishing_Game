class Background {


  void display() {
    background(0, 0, 255);

    //Draws the grass
    fill(0, 225, 0);
    rect(0, height-50, width, 50);
    for (int x = 0; x < 1; x++) {
      for (int i = 0; i < width; i += 10) {
        
        triangle(i, height-40, i+(int)random(-5, 15), height-40, i+(int)random(-5, 15), height-60);
      }
    }
  }
}
