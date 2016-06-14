public class Unit {
    
    private String name;
    private Double health;
    private Integer maxDamage;
    private Integer minDamage;
    
    public Unit (){
    	
    }
    
    public Unit(String name, Double health, Integer maxDamage, Integer minDamage){
    	this.name = name;
    	this.health = health;
    	this.maxDamage = maxDamage;
    	this.minDamage = minDamage;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setHealth(Integer health) {
        if(health >= 0){
            this.health = health;
        } else {
            this.health = 0; 
        }
    }

    public Double getHealth(){
        return health;
    }

    public void setMaxDamage(Integer maxDamage) {
        this.maxDamage = maxDamage;
    }
    
    public Integer getMaxDamage() {
        return maxDamage;
    }
    
    public void setMinDamage(Integer minDamage) {
        this.minDamage = minDamage;
    }
    
    public Integer getMinDamage() {
        return minDamage;
    }
    
    public Double averageDamage(){
		Double averageDamage;
		averageDamage = Math.floor(Math.random() * (this.getMaxDamage() - this.getMinDamage() + 1) + this.getMinDamage());
		return averageDamage;
	}
}