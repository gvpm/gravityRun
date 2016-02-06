public class Level{
  
  //Coin[] Coins;
  ArrayList<Coin> coins;
  boolean gameOn;
  int maxScore;
  Player p;
  int gravity;
  int nGoodCoins;
  int nBadCoins;
  int time;
 
  
 
  public Level(){
    p = new Player();
    gravity = 1;
    coins = new ArrayList<Coin>();
    
    nGoodCoins = 20;
    nBadCoins = 5;
    maxScore =nGoodCoins;
    time = 0;
    
  }
  //creates all the good and bad coins and stores in the arrrays
  //gives a random position to each one.
  public void generate(){
    //good coin
      for(int i = 0; i < nGoodCoins; i++){
        Coin c = new Coin(random(width),random(height),1);
        coins.add(c);     
      }
      
      //bad coin
       for(int i = 0; i < nBadCoins; i++){
        Coin c = new Coin(random(width),random(0+p.getDiameter()+5,height-p.getDiameter()-5),0);
        coins.add(c);     
      }
  
    
  }
  //sending the gravity to the player
  public void update(){
    //if player is alive, player continues to move
    if(p.isAlive()&&!checkScore()){
      p.update(gravity);
      if(((float)frameCount%60==0))
      //time = (int)frameCount/60;//assuming 60fps
      time++;
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
    time = 0;
    p.resetCoins();
    p.resurrect();
    generate();
    
  }
  
  //checks if max score is
  public boolean checkScore(){
    if(p.checkCoins() == getMaxScore())
    return true;
    
    return false;
    
    
  }
  
  public Player getPlayer(){
    return p;
    
  }
  public int getMaxScore(){
    return maxScore;
    
  }
  
  public void checkCollision(){
    for(int i = 0; i < coins.size(); i++){
       Coin coinToCheck = coins.get(i);
      if(p.collision(coinToCheck)){
        coins.remove(i);        
        
      }
      
    }
    
  }
  public int getTime(){
    return time;
    
  }
  
  

  
  
  
  
 
  
}