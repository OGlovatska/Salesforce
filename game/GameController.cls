public class GameController {
      
    public Unit firstUnit{get;set;}
    public Unit secondUnit{get;set;}
    public Game game{get;set;}
      
    public Unit winner{get;set;}
    
    public GameController(){
        firstUnit = new Unit();
        secondUnit = new Unit();
        winner = new Unit();
	}
    
    public void startGame(){
        
    game = new Game();
    winner = game.fight(firstUnit, secondUnit);
                               
    }
}