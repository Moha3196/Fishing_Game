class FishingRod {

  void display() {
    //stroke(0);
    //PVector mouse = new PVector(mouseX, mouseY);
    //PVector center = new PVector(width/2, height/2);
    //mouse.sub(center);
    //strokeWeight(5);
    //line(width/2+25, 95, mouseX, mouseY);
    //strokeWeight(1);
    if (0 < mouseX && mouseX < width && mouseY > 190 && mouseY < height-48.75) {
      fill(230, 0, 0);
      ellipse(mouseX, mouseY, 10, 10);
    }
  }
}
