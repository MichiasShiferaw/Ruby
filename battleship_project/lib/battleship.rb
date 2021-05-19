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
