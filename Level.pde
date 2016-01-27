public class Level{
  
  Coin[] Coins;
  boolean gameOn;
  int maxScore;
  Player p;
  int gravity;
  
 
  public Level(){
    p = new Player();
    gravity = 1;
    
  }
  //crates all the good an bad coins ans stores in the arrrays
  //gives a random position to each one.
  public void generate(){
  
    
  }
  //sending the gravity to the player
  public void  update(){
    p.update(gravity);
    checkScore();
    
    
  }
  //draws bacjground
  //loops in all the array and draws
  //draws the player
  public void draw(){
    background(255);
    p.draw();
  }
  
  public void changeGravity(){
    gravity = -gravity;
    
  }
  
  public void randomise(){
    
  }
  
  //checks if max score is
  public void checkScore(){
    
  }
  

  
  
  
  
 
  
}