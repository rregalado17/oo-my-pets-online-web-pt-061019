class Cat 
  
  attr_accessor :owner, :mood
  attr_reader :name 
  
  CATS = []
  
  def initialize(name, owner, mood = 'nervous')
    @name = name 
    @owner = owner
    @mood = mood
    CATS << self 
    
  end
  
  
  def self.all 
    CATS
  end
  
end