//GRAVITY RUN - Main Class by Anthony Cordova

//See also: References (end of code)

Level l;
UI ui;


void setup() {
  size(750, 360);
  l = new Level();
 
  l.generate();
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
  
  }
}

//REFERENCES in Harvard Referencing Style
//Processing, Processing Foundation. 2016. Draw. [Online]. [Accessed 27 January 2016]. Available from: https://processing.org/reference/draw_.html
//Processing, Processing Foundation. 2016. if. [Online]. [Accessed 27 January 2016]. Available from: https://processing.org/reference/if.html
//Processing, Processing Foundation. 2016. Boolean. [Online]. [Accessed 27 January 2016]. Available from: https://processing.org/reference/boolean.html
//Processing, Processing Foundation. 2016. Array. [Online]. [Accessed 3 February 2016]. Available from: https://processing.org/reference/Array.html
//Processing, Processing Foundation. 2016. ArrayList. [Online]. [Accessed 3 February 2016]. Available from: https://processing.org/reference/ArrayList.html
//Oracle, Java Platform. 1993. ArrayList. [Online]. [Accessed 3 February 2016]. Available from: https://docs.oracle.com/javase/7/docs/api/java/util/ArrayList.html 