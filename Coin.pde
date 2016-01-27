public class Coin{
  
  PImage img;
  float x,y;
  int type;
  float radius;
  float diameter;
  //
  public Coin(float x,float y){
    radius = 5;
    diameter = radius*2;
  }
  //draws the coin
  public void draw(){
    
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
  
  
  
}