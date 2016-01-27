/**
 * Background Image. 
 * 
 * This example presents the fastest way to load a background image
 * into Processing. To load an image as the background, it must be
 * the same width and height as the program.
 */

Level l;


void setup() {
  size(750, 360);
  l = new Level();
  // The background image must be the same size as the parameters
  // into the size() method. In this program, the size of the image
  // is 640 x 360 pixels.
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
  