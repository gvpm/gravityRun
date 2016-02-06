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