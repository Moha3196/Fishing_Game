class FishingRod {

  void display() {
    if (0 < mouseX && mouseX < width && mouseY > 190 && mouseY < height-48.75 && thrown == false) {
      fill(230, 0, 0);
      ellipse(mouseX, mouseY, 10, 10);
      landingPosX = 0;
      landingPosY = 0;
    }
    
    if (mousePressed && 0 < mouseX && mouseX < width && mouseY > 190 && mouseY < height-48.75 && thrown == false) {
      landingPosX = mouseX;
      landingPosY = mouseY;
      thrown = true;
      println(landingPosX, landingPosY);
    } 

    if (thrown == true) {
      fill(255, 255, 255);
      ellipse(landingPosX, landingPosY, landingRadius*2, landingRadius*2);
      stroke(0);
      PVector mouse = new PVector(mouseX, mouseY);
      PVector center = new PVector(width/2, height/2);
      mouse.sub(center);
      strokeWeight(5);
      line(width/2+25, 95, landingPosX, landingPosY);
      strokeWeight(1);
    }
  }
}
