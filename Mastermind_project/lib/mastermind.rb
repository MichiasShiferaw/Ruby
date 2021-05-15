require_relative "code"

require "byebug"

class Mastermind

      def initialize(length)

        @secret_code=Code.random(length)

    end
      
    def print_matches(instance)
        # (0...instance.length).each do |i|
        # if instance[i]==@secret_code[i]
        #     p instance[i]
        # end
        # end

        puts "exact matches: #{@secret_code.num_exact_matches(instance)}"
        puts "near matches: #{@secret_code.num_near_matches(instance)}"

    end


    def ask_user_for_guess
        #debugger
        p "Enter a code"
        input = gets.chomp
        guess=Code.from_string(input)
        print_matches(guess)
        return @secret_code==guess
        #return input==@secret_code

    end      




end
