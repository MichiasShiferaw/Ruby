class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name=name
        @breed=breed
        @age=age
        @bark=bark
        @favorite_foods=favorite_food
    end

    def name
        @name
    end    
    
    def breed
        @breed
    end

    def age
        @age
    end

    def bark
        if self.age>3
            @bark.upcase
        else
            @bark.downcase
        end
    end   

    def age=(new_age)
        @age=new_age
    end

    def favorite_foods
        @favorite_foods
    end    
    
    def favorite_food?(str1)

        @favorite_foods.each do |i|
            if i.downcase.include?(str1.downcase)
                return true
            end
        end
        return false


    end    
    
end
