#ANIMAL

'''
Each animal should have a/an:

property called name
property called age
property called sleeping, which should have a default value of true
instance method called wake_up which changes sleeping to false
instance method called go_to_sleep which changes sleeping to true
instance method called feed which returns "NOM NOM NOM" if the animal is not sleeping
'''
# require 'pry'

class Animal 

  attr_accessor :name, :age, :sleeping

  def initialize(name,age)
    @name = name
    @age = age
    @sleeping = true
  end

  #Instance Methods
  def wake_up
    @sleeping = false
  end

  def go_to_sleep
    @sleeping = true
  end

  def feed 
    if @sleeping == true
      "ZZZzzzZZZZ"
    else
      "NOM NOM NOM"
    end
  end
end

# binding.pry