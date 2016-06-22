public class Game {
    
    public Unit winner{get;set;}
    
    /**
     * Method used to start fight between two Units and 
     * get the winner. It tooks as parameter two Units.
     */      
    public Unit fight(Unit firstUnit, Unit secondUnit){  
        
    	while(true){
    		
            /** 
             * Check if both Units' health higher then 0. 
             * If it does second Unit strikes first Unit
             */
    		if (firstUnit.health > 0 && secondUnit.health > 0) {
                    firstUnit.setHealth(firstUnit.health - secondUnit.averageDamage());
                    System.debug(secondUnit.name + ' attacked! ' + firstUnit.name + '\'s health is ' + firstUnit.health);
                } else break;

            /** 
             * Check if both Units' health higher then 0. 
             * If it does first Unit strikes second Unit
             */
            if (secondUnit.health > 0 && firstUnit.health > 0) {
                    secondUnit.setHealth(secondUnit.health - firstUnit.averageDamage());
                    System.debug(firstUnit.name + ' attacked! ' + secondUnit.name + '\'s health is ' + secondUnit.health);
                } else break;
				
        }
        
        /** 
         * Сheck who remained alive after the fight and
         * assign a value to a variable "winner"
         */ 
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