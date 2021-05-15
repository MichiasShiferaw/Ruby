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
