
//The Coin Class draws the coin (although it does not place them onto the  map, the Level Class does), 
//and changes its colour properties (stroke and fill colour) to establish its coin type (good or bad).


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