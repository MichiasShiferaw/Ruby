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
  def initialize(arr1)
    if Code.valid_pegs?(arr1)
      @pegs=arr1.map{|char| char.upcase}
    else
      raise "pegs are invalid"
    end
  end
  def pegs
    @pegs
  end

  def self.random(length)
    random_peg=[]
    length.times{random_peg <<POSSIBLE_PEGS.keys.sample}
    Code.new(random_peg)
  end

  def self.from_string(str1)

    Code.new(str1.split(""))

  end
