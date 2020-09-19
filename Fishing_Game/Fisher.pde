int HeadPosition = 45;

class Fisher {
  //Function that draws the Fisher Man
  void display() {
    //Draws the Head of the Fisher
    fill(0, 0, 0);
    ellipse(width/2, HeadPosition, 70, 70);
    fill(255, 255, 255);
    ellipse(width/2, HeadPosition, 65, 65);
    //Draws Eyes
    fill(0, 0, 0);
    ellipse(width/2+10, HeadPosition-5, 10, 10);
    ellipse(width/2-10, HeadPosition-5, 10, 10);
    //Draws the Mouth
    arc(width/2, HeadPosition+10, 40, 30, 0, PI, OPEN);
    //Draws the Body
    strokeWeight(5);
    //Draws the Torso
    line(width/2, HeadPosition+35, width/2, HeadPosition+75);
    //Draws the Right Leg
    line(width/2, HeadPosition+75, width/2+15, HeadPosition+100);
    //Draws the Left Leg
    line(width/2, HeadPosition+75, width/2-15, HeadPosition+100);
    //Draws the Right Arm
    line(width/2, HeadPosition+50, width/2+25, HeadPosition+50);
    //Draws the Left Arm
    line(width/2, HeadPosition+50, width/2-25, HeadPosition+50);
    strokeWeight(1);
  }
}
