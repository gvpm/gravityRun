//GRAVITY RUN - UI Class by Brian

//See also: References (end of code)

public class UI{
 int score;//stores how many coins player got
 int time;//stores the time elapsed since the beginning of the game
 Level l;
  
  public UI(Level l)
  {
    this.l = l;
    score = 0;
    time = 0;
    
  }
  
  public void update()//constantly gets coins from player, and updates the time
  {
    score = l.getPlayer().checkCoins();
    time = l.getTime();
  }
  
  public void draw()
  {
    text("Score: "+score, 20,20);
    text("Time: "+time,20,35);
    
    text("G to change Gravity",width-130,20);
    text("R to reset LvL",width-130,35);
    
    
    if(!l.getPlayer().isAlive()&&!l.checkScore()){
      text("DEAD",(width/2)-30,height/2);
      
    }else if(l.checkScore()){
      text("YOU WON IN "+time+" s",(width/2)-60,height/2);
      
    }
  }
  
}

//REFERENCES in Harvard Referencing Style
//Processing, Processing Foundation. 2016. Draw. [Online]. [Accessed 27 January 2016]. Available from: https://processing.org/reference/draw_.html
//Processing, Processing Foundation. 2016. if. [Online]. [Accessed 27 January 2016]. Available from: https://processing.org/reference/if.html
//Processing, Processing Foundation. 2016. Boolean. [Online]. [Accessed 27 January 2016]. Available from: https://processing.org/reference/boolean.html
//Processing, Processing Foundation. 2016. Array. [Online]. [Accessed 3 February 2016]. Available from: https://processing.org/reference/Array.html
//Processing, Processing Foundation. 2016. ArrayList. [Online]. [Accessed 3 February 2016]. Available from: https://processing.org/reference/ArrayList.html
//Oracle, Java Platform. 1993. ArrayList. [Online]. [Accessed 3 February 2016]. Available from: https://docs.oracle.com/javase/7/docs/api/java/util/ArrayList.html 