require_relative "./animal"

# require 'pry'

class Kitty < Animal

  def initialize(name,age)
    super
  end

  def meow
    if @sleeping == false
      "MEOW"
    else
      "Cat Dreamzzz"
    end
  end
end

# binding.pry