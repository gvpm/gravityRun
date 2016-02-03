public class Level{
  
  //Coin[] Coins;
  ArrayList<Coin> coins;
  boolean gameOn;
  int maxScore;
  Player p;
  int gravity;
  
 
  public Level(){
    p = new Player();
    gravity = 1;
    coins = new ArrayList<Coin>();
    
  }
  //creates all the good and bad coins and stores in the arrrays
  //gives a random position to each one.
  public void generate(){
    //good coin
      for(int i = 0; i < 30; i++){
        Coin c = new Coin(random(width),random(height),1);
        coins.add(c);     
      }
      
      //bad coin
       for(int i = 0; i < 5; i++){
        Coin c = new Coin(random(width),random(0+p.getDiameter()+5,height-p.getDiameter()-5),0);
        coins.add(c);     
      }
  
    
  }
  //sending the gravity to the player
  public void  update(){
    //if player is alive, player continues to move
    if(p.isAlive()){
      p.update(gravity);
    }
      
      
    //constantly checks whether player has collided with a coin
    checkCollision();
    //score update
    checkScore();
    
    
  }
  //draws background
  //loops in all the array and draws
  //draws the player
  public void draw(){
    background(255);
    for(int i = 0; i < coins.size(); i++){
      Coin coinToDraw = coins.get(i);
      coinToDraw.draw();
    }
    
    p.draw();
    
  }
  
  public void changeGravity(){
    if(p.isFloor()){
    gravity = -gravity;
    }
    
  }
  
  public void randomise(){
    coins.clear();
    generate();
    
  }
  
  //checks if max score is
  public void checkScore(){
    
  }
  
  public void checkCollision(){
    for(int i = 0; i < coins.size(); i++){
       Coin coinToCheck = coins.get(i);
      if(p.collision(coinToCheck)){
        coins.remove(i);        
        
      }
      
    }
    
  }
  
  

  
  
  
  
 
  
}