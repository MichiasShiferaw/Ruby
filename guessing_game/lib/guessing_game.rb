class GuessingGame
    
    def initialize(min, max)
        @min=min
        @max=max
        @secret_num=rand(@min..@max)
        @num_attempts=0
        @game_over=false
    end
    def check_num(num_1)

        @num_attempts=@num_attempts+1

         if num_1==@secret_num 
            @game_over=true
            return puts "you win" 
         elsif num_1>@secret_num
            p "too big"
        else
            p "too small"
        end
    end
    def ask_user
        puts "Enter a number: "
        num=gets.chomp.to_i
        check_num(num)
    end
    
