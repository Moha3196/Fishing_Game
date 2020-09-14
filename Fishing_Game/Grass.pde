class Grass {
  int Xrandom2;
  int Xrandom3;
  int StartPos;
  int BottomBlades;
  int TopBlade;
  
  //Grass Constructor
  Grass(int StartPos, int BottomBlades, int TopBlade){
    //Randomizes the X2 and X3 position of the grass straws
    Xrandom2 = (int)random(-10, 10);
    Xrandom3 = (int)random(-10, 10);
    this.StartPos = StartPos;
    this.BottomBlades = BottomBlades;
    this.TopBlade = TopBlade;
  }
  
  //Draws the grass
  void GrassDraw() {
    fill(0, 225, 0);
    stroke(1);
    triangle(StartPos, BottomBlades, StartPos+Xrandom2, BottomBlades, StartPos+Xrandom3, TopBlade);
    noStroke();
  }
}
