public class Player{
  
  PImage img;
  
  float x,y,speed,diameter, radius;
  
  int nCoins;
  
  boolean alive;
  
  
  public Player(){
    alive =true;
    
    diameter = 30;
    radius = diameter/2;
    speed = 3;
    x=0+radius;
    y=height-radius;
   
    
    
  }
  
  
   public void update(int g){
    move(g);
    
  }
  //draw a ball in that posiition with the size
  public void draw(){
    stroke(0);          // Setting the outline (stroke) to black
    fill(0);
    ellipse(x, y, diameter, diameter);
    

    
  }
 
  //goind in front, if it hits the wall, goes back to begining
  public void move(int g){
    x = x+speed;
    y=y+speed*g;
    //if it reaches the end, goes back to begining
    if(x>=width+radius){
      x=0+radius;
    }
    if(y>height-radius){
      setY(height-radius);
    }
    if(y<(0+radius)){
      setY(0+radius);
    }
    
    
    
  }
  //check if collided with that coin
  //if it is a bad coin alive will be false;
  //if it is a good one ncoind++;
  //
  public boolean colision(Coin c){
    
    float dist = dist(x,y,c.getX(),c.getY());
    if(dist<=this.radius+c.radius){
      if(c.getType()==0){
        alive=false;
      }else if(c.getType()==1){
        nCoins++;
      }
      //case where is coolided
      return true;
    }  
    
    //case where it didnt colide
    return false;
    
  }
  
  public float getX(){
    return x;
  }
  public float getY(){
    return Y;
  }
  public void setX(float x){
    this.x=x;
  }
  public void setY(float y){
    this.y=y;
  }
  
 
  
  
}