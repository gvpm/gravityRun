//GRAVITY RUN - Level Class by Lien Ngo
//Brainstorming through a series of ideas of what type of program we could make,
//we decided to go with a simplistic game that - while simple, can still be coded
//to remain "beautiful" (as described by Guilhe!).
//Having discussed roles most suitable to ourselves, I decided to take on the
//responsibilities of the Level Class as having no prior experience to programming,
//it seemed like a good challenge!

//The Level class is in charge of refreshing the Level, as its name suggests,
//by loading the coins from a stored array list and checking on the player's
//status (e.g. score, dead or alive), proceeding to ending or refreshing the map, 
//dependent on the player's perfomance. 

//See also: Evaluation and References (end of code)

public class Level{

  //Setting the variables and array list to store coins in

  //Coin[] Coins;
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
    nGoodCoins = 20;
    nBadCoins = 5;
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
    //if player is alive, player continues to move
    if(p.isAlive()&&!checkScore()){
      p.update(gravity);
      if(((float)frameCount%60==0))
      //time = (int)frameCount/60;
      //assuming 60fps
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
    time = 0;
    p.resetCoins();
    p.resurrect();
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
  
 
}

//EVALUATION
//I felt that the Level Class was a good challenge because my group mates helped me to learn a lot,
//the difficulty motivated me to experiment with different types of codes to achieve the 
//best results in the most efficient method.
//If I were to do this project again, I will learn to work with a wider range of types of code,
//in order to achieve a game that will also be as visually sophisticated as this experience was!

//REFERENCES in Harvard Referencing Style
//Processing, Processing Foundation. 2016. Draw. [Online]. [Accessed 27 January 2016]. Available from: https://processing.org/reference/draw_.html
//Processing, Processing Foundation. 2016. if. [Online]. [Accessed 27 January 2016]. Available from: https://processing.org/reference/if.html
//Processing, Processing Foundation. 2016. Boolean. [Online]. [Accessed 27 January 2016]. Available from: https://processing.org/reference/boolean.html
//Processing, Processing Foundation. 2016. Array. [Online]. [Accessed 3 February 2016]. Available from: https://processing.org/reference/Array.html
//Processing, Processing Foundation. 2016. ArrayList. [Online]. [Accessed 3 February 2016]. Available from: https://processing.org/reference/ArrayList.html
//Oracle, Java Platform. 1993. ArrayList. [Online]. [Accessed 3 February 2016]. Available from: https://docs.oracle.com/javase/7/docs/api/java/util/ArrayList.html 