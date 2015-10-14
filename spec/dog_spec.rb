require_relative "../dog"

describe "Dogs" do 
  before(:all) do 
    @dog = Dog.new("puppy",4)
  end


  describe "Instance Methods" do
    it "woofs when its not sleeping" do
      @dog.wake_up
      expect(@dog.woof).to eq("WOOF")
    end
    it "adds a treat to favorite treats" do 
      Dog.add_treat("BONE")
      dog2 = Dog.new("bob",2)
      puts "TREATS: #{Dog.show_treats}"
      expect(Dog.show_treats.length).to eq(1)
    end
  end
end