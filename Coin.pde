//GRAVITY RUN - Coin Class by Cem Kose
//Write a mini introduction here about your class and any inspiration
//Anything like how you felt about making the class (nervous?)

//A brief description of what your class does
//And then fill in evaluation at end of code

//See also: Evaluation and References (end of code)


public class Coin{
  
  PImage img;
  float x,y;
  int type;
  float radius;
  float diameter;
  //
  public Coin(float xOut,float yOut, int typeOut){
    radius = 5;
    diameter = radius*2;
    x = xOut;
    y = yOut;
    type = typeOut;
    
    
    
  }
  //draws the coin
  public void draw(){
    
    if(type==1){
       stroke(150);          
       fill(150);
      
    }else if(type==0){
       stroke(0);          
       fill(255,0,0);
      
    }
   
    
    ellipse(x, y, diameter, diameter);
    
  }
  public int getType(){
    return type;
  }
  public float getX(){
    return x;
  }
  public float getY(){
    return y;
  }
  public float getRadius(){
    return radius;
  }
  public float getDiameter(){
    return diameter;
  }
  
  
  
}

//EVALUATION
//How you felt about your class - liked/disliked it?
//If you were to do this project again, what would you do differently? 
//(e.g. stuff like learning more code to use, don't need to be fancy) 

//REFERENCES in Harvard Referencing Style
//Processing, Processing Foundation. 2016. Draw. [Online]. [Accessed 27 January 2016]. Available from: https://processing.org/reference/draw_.html
//Processing, Processing Foundation. 2016. if. [Online]. [Accessed 27 January 2016]. Available from: https://processing.org/reference/if.html
//Processing, Processing Foundation. 2016. Boolean. [Online]. [Accessed 27 January 2016]. Available from: https://processing.org/reference/boolean.html
//Processing, Processing Foundation. 2016. Array. [Online]. [Accessed 3 February 2016]. Available from: https://processing.org/reference/Array.html
//Processing, Processing Foundation. 2016. ArrayList. [Online]. [Accessed 3 February 2016]. Available from: https://processing.org/reference/ArrayList.html
//Oracle, Java Platform. 1993. ArrayList. [Online]. [Accessed 3 February 2016]. Available from: https://docs.oracle.com/javase/7/docs/api/java/util/ArrayList.html 