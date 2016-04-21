
Level l;
UI ui;


void setup() {
  size(750, 360);
  l = new Level();
 
  l.generate();
  //Sends the lvl to the UI
  ui = new UI(l);
}

void draw() {
  l.update();
  ui.update();
  l.draw();
  ui.draw();
  
  
  
}

  void keyPressed() {
  if (keyCode == 'g' ||keyCode == 'G') {
    l.changeGravity();
  
  }
  if (keyCode == 'r' ||keyCode == 'R'){
    l.randomise();
    if(!l.getPlayer().isAlive()){
      l.getPlayer().resurrect();
    }
  
  }
}