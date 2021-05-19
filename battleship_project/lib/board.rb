require "byebug"

class Board

    def initialize(n)
        @grid=Array.new(n,:N) { Array.new(n,:N) }
        @size=n*n

    end
