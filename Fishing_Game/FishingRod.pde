class FishingRod {
  int xPos;
  int yPos;
  boolean thrown;
  
  //Fishing Rod Constructor
  FishingRod(int xPos, int yPos, boolean thrown) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.thrown = thrown;
  }
  
  //Function that draws Fishing Rod
  void display() {
    //Shows red Circle to help aiming, when the Fishing Rod isn't thrown
    if (0 < mouseX && mouseX < width && mouseY > 190 && mouseY < height-48.75 && thrown == false) {
      fill(230, 0, 0);
      ellipse(mouseX, mouseY, 10, 10);
      landingPosX = 0;
      landingPosY = 0;
    }
    
    //Throws Fishing Rod on the marked position when mouse is pressed
    if (mousePressed && 0 < mouseX && mouseX < width && mouseY > 190 && mouseY < height-48.75 && thrown == false && FishInfo == false) {
      landingPosX = mouseX;
      landingPosY = mouseY;
      thrown = true;
      println(landingPosX, landingPosY);
    } 
    
    //Draws the Fishing Rod when its thrown
    if (thrown == true) {
      fill(255);
      ellipse(landingPosX, landingPosY, landingRadius*2, landingRadius*2);
      stroke(0);
      PVector mouse = new PVector(mouseX, mouseY);
      PVector center = new PVector(width/2, height/2);
      mouse.sub(center);
      strokeWeight(5);
      line(xPos, yPos, landingPosX, landingPosY);
      strokeWeight(1);
    }
  }
}
