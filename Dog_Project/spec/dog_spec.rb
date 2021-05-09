require "dog"

describe "Dog" do
  let(:dog) { Dog.new("Fido", "German Shepard", 3, "Bork!", ["Bacon", "Chicken"])}

  describe "#initialize" do
    it "should accept a name (string), breed (string), age (number), bark (string), and favorite_foods (array) as arguments" do
      dog
    end
