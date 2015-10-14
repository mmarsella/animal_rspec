require_relative "../kitty"

describe "Kitties" do 
  before(:all) do 
    @kitty = Kitty.new("cat",4)
  end


  describe "Instance Methods" do
    it "meows when its not sleeping" do
      @kitty.wake_up
      expect(@kitty.meow).to eq("MEOW")
    end
  end
end