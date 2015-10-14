#DOG

'''
should inherit from Animal
has a class variable called favorite_treats which is an array of treats
has an instance variable called favorite treat which is a random item in the favorite_treats array
has an instance method called woof which returns "WOOF" if sleeping is false
has a class method which adds to the favorite_treats array
has a class method which gets the favorite_treats array
'''


##### QUESTION #### 
# Do cat and dog classes inherit the attr_accessor :name, :age, :sleeping????



require_relative "./animal"

# require 'pry'

class Dog < Animal
  @@favorite_treats = []

  attr_accessor :favTreat, :favorite_treats

  def initialize(name,age)
    super
    @favTreat = @@favorite_treats.sample
  end

  def woof
    if @sleeping == false
      "WOOF"
    else 
      "Dog Dreamzzzzz"
    end
  end

  def self.add_treat(treat) 
    @@favorite_treats.push(treat)
  end

  def self.show_treats
    @@favorite_treats
  end

end

# binding.pry

