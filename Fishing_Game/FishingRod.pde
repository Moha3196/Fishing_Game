class FishingRod {
  int xPos;
  int yPos;
  int R = 0;
  int G = 0;
  int B = 0;
  boolean thrown;

  FishingRod(int xPos, int yPos, int R, int G, int B, boolean thrown) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.R = R;
    this.G = G;
    this.B = B;
    this.thrown = thrown;
  }

  void display() {
    if (0 < mouseX && mouseX < width && mouseY > 190 && mouseY < height-48.75 && thrown == false) {
      fill(230, 0, 0);
      ellipse(mouseX, mouseY, 10, 10);
      landingPosX = 0;
      landingPosY = 0;
    }

    if (mousePressed && 0 < mouseX && mouseX < width && mouseY > 190 && mouseY < height-48.75 && thrown == false && FishInfo == false) {
      landingPosX = mouseX;
      landingPosY = mouseY;
      thrown = true;
      println(landingPosX, landingPosY);
    } 

    if (thrown == true) {
      fill(255, 255, 255);
      ellipse(landingPosX, landingPosY, landingRadius*2, landingRadius*2);
      stroke(R, G, B);
      PVector mouse = new PVector(mouseX, mouseY);
      PVector center = new PVector(width/2, height/2);
      mouse.sub(center);
      strokeWeight(5);
      line(xPos, yPos, landingPosX, landingPosY);
      strokeWeight(1);
    }
  }
}
