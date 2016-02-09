//GRAVITY RUN - Player Class by Guilherme Magalhaes
//Write a mini introduction here about your class and any inspiration
//Anything like how you felt about making the class (nervous?)

//A brief description of what your class does
//And then fill in evaluation at end of code

//See also: Evaluation and References (end of code)


public class Player{
  
  PImage img;
  
  float x,y,speed,diameter,radius;
  
  int nCoins;
  
  boolean alive;
  
  boolean floor;
  
  int verticalSpeed;
  
  int baseSpeed;
  //constructor
  //set initial  parameters
  public Player(){
    alive =true;    
    diameter = 30;
    radius = diameter/2;
    speed = 3;
    x=0+radius;
    y=height-radius;  
    floor = true;
    verticalSpeed = 6;
    baseSpeed = 3;
    
    
  }  
    
   public void update(int g){
    move(g);
    
  }
  //draw a ball in that position with the size
  public void draw(){
    stroke(0);          // Setting the outline (stroke) to black
    fill(0);
    ellipse(x, y, diameter, diameter);
    

    
  }
 
  //going in front, if it hits the wall, goes back to beginning
  public void move(int g){
    //updates with the speed
    x = x+speed;
    //updates with the speed times gravity that can be -1 or 1 (up or down)
    y=y+(6)*g;
    //if it reaches the end, goes back to beginning
    if(x>=width+radius){
      x=0+radius;
      speed +=0.1;
    }
    //with that it wont go over the bottom of the level
    if(y>height-radius){
      setY(height-radius);
      floor=true;
    }else if(y<(0+radius)){
      setY(0+radius);
      floor = true;
    }else{
      floor =false;
    }
    
    
    
  }
  //check if collided with that coin
  //if it is a bad coin alive will be false;
  //if it is a good one ncoind++;
  public boolean collision(Coin c){
    
    float dist = dist(x,y,c.getX(),c.getY());
    if(dist<=this.radius+c.radius){
      if(c.getType()==0){
        alive=false;
      }else if(c.getType()==1){
        nCoins++;
      }
      //case where is collided
      return true;
    }  
    
    //case where it didnt collide
    return false;
    
  }
  
  public float getX(){
    return x;
  }
  public float getY(){
    return Y;
  }
   public float getDiameter(){
    return diameter;
  }
  public void setX(float x){
    this.x=x;
  }
  public void setY(float y){
    this.y=y;
  }
  public int checkCoins(){
    return nCoins;
    
  }
   public boolean isFloor(){
    return floor;
    
  }
  
  public boolean isAlive(){
    return alive;
    
  }
  public void resetCoins(){
    nCoins = 0;
    
  }
  public void resurrect(){
    alive = true;
    speed =baseSpeed;
    
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