public class Unit 
{
    
    public String name{get;set;}
    public Double health{get;set;}
    public Integer maxDamage{get;set;}
    public Integer minDamage{get;set;}
    
    /**
     * Constructor without parameters
     */
    public Unit ()
    {
    	
    }
    
    /** 
     * Constructor for Unit class. It takes as parameters
     * name of the Unit, it's start health, max and min Unit's damage
     */
    public Unit(String name, Double health, Integer maxDamage, Integer minDamage)
    {
    	this.name = name;
    	this.health = health;
    	this.maxDamage = maxDamage;
    	this.minDamage = minDamage;
    }

	/**
	 * Method set healt durring the fight. If it less than
	 * 0, it set 0 as a health value
	 */ 
    public void setHealth(Double health)
    {
        if(health >= 0)
        {
            this.health = health;
        } 
        else 
        {
            this.health = 0; 
        }
    }
  
  	/**
  	 * Method to determine average damage of Unit
  	 */
    public Double averageDamage()
    {
		Double averageDamage;
		averageDamage = Math.floor(Math.random() * (this.maxDamage - this.minDamage + 1) + this.minDamage);
		return averageDamage;
	}
}