
void MiniGameScreen() {
  background(0,0,255);
  int B = 25;
  int H = 150; 
  
  for (float i = 0; i < width; i += 70) {
      //Draws Planks
      fill(210, 105, 30);
      rect(i, 15, B, H);
      rect(i, 15+H*1.5, B, H);
      
    }
  
  
}
