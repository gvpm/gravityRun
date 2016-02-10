//GRAVITY RUN - Coin Class by Cem Kose
//The Coin Class draws the coin (although it does not place them onto the  map, the Level Class does), 
//and changes its colour properties (stroke and fill colour) to establish its coin type (good or bad).

//See also: References (end of code)


public class Coin{
  
  PImage img;
  float x,y;
  int type;
  float radius;
  float diameter;
  
  //coins - x,y,type is random and is drawn in the Level Class
  public Coin(float xOut,float yOut, int typeOut){
    radius = 5;
    diameter = radius*2;
    x = xOut;
    y = yOut;
    type = typeOut;
    
    
    
  }
  //draws the coin
  public void draw(){
    //two types of coin, good and bad, draws the good one
    if(type==1){
       stroke(150);          
       fill(150);
    //draws the bad coin  
    }else if(type==0){
       stroke(0);          
       fill(255,0,0);
      
    }
   
    
    ellipse(x, y, diameter, diameter);
    
  }
  //coin type and position is gotten at random from the Level Class when it is drawn onto the map over there
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


//REFERENCES in Harvard Referencing Style
//Processing, Processing Foundation. 2016. Draw. [Online]. [Accessed 27 January 2016]. Available from: https://processing.org/reference/draw_.html
//Processing, Processing Foundation. 2016. if. [Online]. [Accessed 27 January 2016]. Available from: https://processing.org/reference/if.html
//Processing, Processing Foundation. 2016. Boolean. [Online]. [Accessed 27 January 2016]. Available from: https://processing.org/reference/boolean.html
//Processing, Processing Foundation. 2016. Array. [Online]. [Accessed 3 February 2016]. Available from: https://processing.org/reference/Array.html
//Processing, Processing Foundation. 2016. ArrayList. [Online]. [Accessed 3 February 2016]. Available from: https://processing.org/reference/ArrayList.html
//Oracle, Java Platform. 1993. ArrayList. [Online]. [Accessed 3 February 2016]. Available from: https://docs.oracle.com/javase/7/docs/api/java/util/ArrayList.html 