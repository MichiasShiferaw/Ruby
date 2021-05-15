require "byebug"

class Code
  
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }
  def self.valid_pegs?(arr1)
    return arr1.all? {|letter| POSSIBLE_PEGS.has_key?(letter.upcase)}
  end
