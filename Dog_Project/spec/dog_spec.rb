require "dog"

describe "Dog" do
  let(:dog) { Dog.new("Fido", "German Shepard", 3, "Bork!", ["Bacon", "Chicken"])}

  describe "#initialize" do
    it "should accept a name (string), breed (string), age (number), bark (string), and favorite_foods (array) as arguments" do
      dog
    end

    it "should set the instance variables @name, @breed, @age, @bark, @favorite_foods" do
      expect(dog.instance_variable_get(:@name)).to eq("Fido")
      expect(dog.instance_variable_get(:@breed)).to eq("German Shepard")
      expect(dog.instance_variable_get(:@age)).to eq(3)
      expect(dog.instance_variable_get(:@bark)).to eq("Bork!")
      expect(dog.instance_variable_get(:@favorite_foods)).to eq(["Bacon", "Chicken"])
    end
  end

  describe "#name" do
    it "should get (return) the dog's name instance variable" do
      expect(dog.name).to be(dog.instance_variable_get(:@name))
    end
  end    
