public class Unit {
    
    public String name{get;set;}
    public Double health{get;set;}
    public Integer maxDamage{get;set;}
    public Integer minDamage{get;set;}
    
    public Unit (){
    	
    }
    
    public Unit(String name, Double health, Integer maxDamage, Integer minDamage){
    	this.name = name;
    	this.health = health;
    	this.maxDamage = maxDamage;
    	this.minDamage = minDamage;
    }

    public void setHealth(Double health) {
        if(health >= 0){
            this.health = health;
        } else {
            this.health = 0; 
        }
    }
  
    public Double averageDamage(){
		Double averageDamage;
		averageDamage = Math.floor(Math.random() * (this.maxDamage - this.minDamage + 1) + this.minDamage);
		return averageDamage;
	}
}