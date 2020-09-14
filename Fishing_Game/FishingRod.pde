class FishingRod {

  void display() {
    stroke(0);
    PVector mouse = new PVector(mouseX, mouseY);
    PVector center = new PVector(width/2, height/2);
    mouse.sub(center);
    strokeWeight(5);
    line(width/2+25, 95, mouseX, mouseY);
    strokeWeight(1);
  }
}
