
Level l;


void setup() {
  size(750, 360);
  l = new Level();
 
  l.generate();
 
}

void draw() {
  l.update();
  l.draw();
  
  
}

  void keyPressed() {
  if (keyCode == UP) {
    l.changeGravity();
  
  }
  if (keyCode == DOWN) {
    l.randomise();
  
  }
}
  