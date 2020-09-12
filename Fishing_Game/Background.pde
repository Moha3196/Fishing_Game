class Background {


  void display() {
    background(0, 0, 255);
    //Draws the grass
    fill(0, 225, 0);
    noStroke();
    rect(0, height-45-3.75, width, 45+3.75);
    for (float i = 0; i < width; i += 2.5) {
      stroke(1);
      int a = (int)random(-10, 10);
      int b = (int)random(-10, 10);
      int c = (int)random(-10, 10);
      int d = (int)random(-10, 10);
      //Draws lines of grass from top to bottom 
      //First line of grass
      triangle(i, height-45, i+a, height-45, i+a, height-60);
      noStroke();
      rect(0, height-45, width, 1);
      //Second line of grass
      stroke(1);
      triangle(i, height-30, i+b, height-30, i+b, height-44);
      noStroke();
      rect(0, height-30, width, 1);
      //Third line of grass
      stroke(1);
      triangle(i, height-15, i+c, height-15, i+c, height-29);
      noStroke();
      rect(0, height-15, width, 1);
      //Fourth line of grass
      stroke(1);
      triangle(i, height, i+d, height, i+d, height-14);
      noStroke();
      rect(0, height, width, 1);
    }
  }
}
