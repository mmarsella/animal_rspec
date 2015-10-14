require_relative "../animal"

describe "Animals" do 

  #Hook
    before(:all) do 
      @animal = Animal.new("Pig",25)
    end

  describe "Instance Methods" do
    it "should wake up the animal" do
      puts "WAKE: #{@animal}"
      @animal.wake_up
      expect(@animal.sleeping).to eq(false)
    end
    it "should put the animal to sleep" do
      puts "SLEEP: #{@animal}"
      @animal.go_to_sleep
      expect(@animal.sleeping).to eq(true)
    end
    it "should say NOM NOM NOM if awake" do 
      @animal.wake_up
      puts "IS IT AWAKE?: #{@animal.sleeping}"
      expect(@animal.feed).to eq("NOM NOM NOM")
    end
  end
end