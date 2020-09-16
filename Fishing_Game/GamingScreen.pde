
void GamingScreen() {
  bg.display();
  fs.display();

  for (int i = f.size()-1; i>=0; i--) {
    Fish Fisha;
    Fisha = f.get(i);
    Fisha.move();
    Fisha.display();
    Fisha.collision();
  }
  fr.display();
}
