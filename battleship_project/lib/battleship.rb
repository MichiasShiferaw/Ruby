require_relative "board"
require_relative "player"

class Battleship
    #attr_reader :player, :board

    def initialize(n)
        @player=Player.new
        @board=Board.new(n)
        @remaining_missing=@board.size*0.5
    end

    def board
        @board
    end

    def player
        @player
    end

    def start_game
        @board.place_random_ships
        p @board.num_ships
        @board.print
    end

    def lose?
        if @remaining_misses<=0
            return true
        else
            return false

        end
    end


    def win?
        if @board.num_ships==0
            p 'you win'
            return true
        else
            return false
        end
    end            

    
    
    def game_over?
        if self.win? || self.lose?
            return true
        else
            return false
        end
    end    
    
    def turn 
        if @board.attack(player.get_move)==false
            @remaining_missing-=1
        end
        @board.print
        puts @remaining_missing 
        
    end
    
end
