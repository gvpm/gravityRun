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