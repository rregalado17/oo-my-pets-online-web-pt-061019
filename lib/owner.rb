require 'pry'

class Owner
  
  attr_reader :name, :species
  attr_accessor :pets
  
  ALL = []
  
  
  def initialize(name)
    @name = name 
    @species = "human"
    ALL << self
    @pets = {:dogs => [], :cats => []}
  end
  
  def say_species 
    "I am a human."
  end
  
  def self.all 
    ALL
  end
  
  def self.count 
    ALL.length
  end
  
  def self.reset_all
    ALL.clear 
  end
  
  def cats 
    Cat.all.select do |cat|
      cat.owner == self 
    end 
  end

  def dogs 
    Dog.all.select do |dog|
      dog.owner == self 
    end
  end
  
  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat, self)
  end
  
  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog, self)
  end 
  
  def walk_dogs 
    Dog.all.each do |walked|
      walked.mood = 'happy'
    end
  end
  
  def feed_cats
    Cat.all.each do |fed|
      fed.mood = 'happy'
    end
  end
  
   def sell_pets
    @pets.all.each do |sold|
      fold.mood = 'nervous'
    end
  end

end