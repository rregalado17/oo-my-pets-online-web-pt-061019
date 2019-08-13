class Dog 
  
  attr_reader :name 
  attr_accessor :owner, :mood
  
  DOGS = []
  
  def initialize(name, owner, mood = 'nervous')
    @name = name 
    @owner = owner 
    @mood = mood
    DOGS << self 
  end 

  
  def self.all 
    DOGS 
  end
  
end