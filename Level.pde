
//The Level class is in charge of refreshing the Level, as its name suggests,
//by loading the coins from a stored array list and checking on the player's
//status (e.g. score, dead or alive), proceeding to ending or refreshing the map, 
//dependent on the player's perfomance. 


public class Level{

  //Setting the variables and array list to store coins in

  //Stores all the coins
  ArrayList<Coin> coins; //Array list to store the coins
  boolean gameOn;
  int maxScore; //Score
  Player p; //To draw the player
  int gravity; //Player movement (up/down)
  int nGoodCoins; //Good coins
  int nBadCoins; //Bad Coins
  int time;
  
 
  
 
  public Level(){
    p = new Player();
    //setting the gravity
    gravity = 1;
    //making the array list to store coins within
    coins = new ArrayList<Coin>();
    
    //we will have 20 good coins and 5 bad coins
    nGoodCoins = 5;
    nBadCoins = 0;
    maxScore =nGoodCoins;
    time = 0;
    
    
    
  }
  //creates all the good and bad coins and stores it in the arrray
  //and gives a random position to each one
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
      //case when player is dead
      //it will only reset game if R was pressed after player died
     if(p.getDeadMessage()==1){
       p.setDeadMessage(-1);
       resetGame();
     }
    //if player is alive, player continues to move
    
    if(p.getDeadMessage() == -1){
    if(p.isAlive()&&!checkScore()){
      p.update(gravity);
      if(((float)frameCount%60==0))
      //time = (int)frameCount/60;
      //assuming 60fps
      time++;
    }

    //constantly checks whether player has collided with a coin
    checkCollision();
    //score update case when lvl is done
    if(checkScore()){
      nextLvl();
    }
    }
   
    
    
   
    
    
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
  //allows the gravity to be changed only if player is at the top or bottom of map
  //to avoid player wiggling through mig-height, raising the difficulty
  public void changeGravity(){
    if(p.isFloor()){
    gravity = -gravity;
    }
    
  }
  
  //resetting the level
  public void randomise(){
   
    gravity=1; 
    p.setX(0+p.getDiameter()/2);
    p.setY(height-p.getDiameter()/2);
    coins.clear();
    //time = 0;
    //nBadCoins ++;
    p.resetCoins();
    p.restartSpeed();
    //p.resurrect();
    generate();
    
  }
  //jumping to next lvl when score is reached
   public void nextLvl(){
   
    gravity=1; 
    p.setX(0+p.getDiameter()/2);
    p.setY(height-p.getDiameter()/2);
    coins.clear();
    //time = 0;
    nBadCoins ++;
    p.resetCoins();
    p.restartSpeed();
    generate();
    
  }
  
   public void resetGame(){
   
    gravity=1; 
    p.setX(0+p.getDiameter()/2);
    p.setY(height-p.getDiameter()/2);
    coins.clear();
    time = 0;
    nBadCoins =0;
    p.resetCoins();
    //p.resurrect();
    generate();
    
  }
  
  //checks for the score
  public boolean checkScore(){
    if(p.checkCoins() == getMaxScore())
    return true;
    
    return false;
    
    
  }
  //function for player
  public Player getPlayer(){
    return p;
    
  }
  //function for score check
  public int getMaxScore(){
    return maxScore;
    
  }
  
  //checking if collision has been made and then to remove the coin
  public void checkCollision(){
    for(int i = 0; i < coins.size(); i++){
       Coin coinToCheck = coins.get(i);
      if(p.collision(coinToCheck)){
        coins.remove(i);        
        
      }
      
    }
    
  }
  //function
  public int getTime(){
    return time;
    
  }
  
  public int getNBadCoins(){
    return nBadCoins;
  }
  
  public int coinsToGoal(){
    
    return getMaxScore() - p.checkCoins();
  }
    
    
  
 
}