require "byebug"

class Code
  
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yello
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

  def [](position)

    @pegs[position]
  end

  def length
    @pegs.length
  end
  def num_exact_matches(guess)
    count=0
    (0...guess.length).each do |i|
      if guess[i]==@pegs[i]
        count+=1
      end
    end

    count

  end

    def num_near_matches(guess)
    count=0
    #debugger
    (0...guess.length).each do |i|
      #p @pegs[(i+1)% guess.length]
      if guess[i]==@pegs[(i+1)% guess.length]||guess[i]==@pegs[(i-1)% guess.length]
        count+=1
      end
    end

    count

  end

  def ==(instance)
    self.pegs==instance.pegs
  end

end
