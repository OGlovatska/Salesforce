public class Game {
    
    public Unit winner{get;set;}
      
    public Unit fight(Unit firstUnit, Unit secondUnit){  
        
    	while(true){

    		if (firstUnit.health > 0 && secondUnit.health > 0) {
                    firstUnit.setHealth(firstUnit.health - secondUnit.averageDamage());
                    System.debug(secondUnit.name + ' attacked! ' + firstUnit.name + '\'s health is ' + firstUnit.health);
                } else break;

            if (secondUnit.health > 0 && firstUnit.health > 0) {
                    secondUnit.setHealth(secondUnit.health - firstUnit.averageDamage());
                    System.debug(firstUnit.name + ' attacked! ' + secondUnit.name + '\'s health is ' + secondUnit.health);
                } else break;
				
        }
		  if (firstUnit.health > secondUnit.health) {
            	System.debug(firstUnit.name + ' has won!');
            	winner = firstUnit;
        } else if (secondUnit.health > firstUnit.health){
            	System.debug(secondUnit.name + ' has won!');
            	winner = secondUnit;
        } 
        return winner;
    }
}