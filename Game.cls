public class Game {

    public Unit fight(Unit firstUnit, Unit secondUnit){  
        Unit winner;
        
    	while(true){

    		if (firstUnit.getHealth() > 0 && secondUnit.getHealth() > 0) {
                    firstUnit.setHealth(firstUnit.getHealth() - secondUnit.averageDamage());
                    System.debug(secondUnit.getName() + ' attacked! ' + firstUnit.getName() + '\'s health is ' + firstUnit.getHealth());
                } else break;

            if (secondUnit.getHealth() > 0 && firstUnit.getHealth() > 0) {
                    secondUnit.setHealth(secondUnit.getHealth() - firstUnit.averageDamage());
                    System.debug(firstUnit.getName() + ' attacked! ' + secondUnit.getName() + '\'s health is ' + secondUnit.getHealth());
                } else break;
				
        }
		  if (firstUnit.getHealth() > secondUnit.getHealth()) {
            	System.debug(firstUnit.getName() + ' has won!');
            	winner = firstUnit;
        } else if (secondUnit.getHealth() > firstUnit.getHealth()){
            	System.debug(secondUnit.getName() + ' has won!');
            	winner = secondUnit;
        } 
        return winner;
    }
}