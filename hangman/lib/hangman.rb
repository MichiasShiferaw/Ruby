require "byebug"

class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def initialize
    @secret_word= Hangman.random_word
    @guess_word=Array.new(secret_word.length, "_")
    @attempted_chars=[]
    @remaining_incorrect_guesses=5
  end

  def self.random_word
    DICTIONARY.sample
    #DICTIONARY[rand(0..DICTIONARY.length)]
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def guess_word
    @guess_word
  end
  def secret_word
    @secret_word
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)

  end
  def get_matching_indices(char)
    newArray=[]
    secret_word.split("").each_with_index{|item,index| newArray<<index if char ==item}
    newArray
  end

  def fill_indices(char,array1)
    array1.each do |i|
      @guess_word[i]=char
    end
  end
  def try_guess(char)
    if self.already_attempted?(char)
      puts "that has already been attempted"
      return false
    end

    @attempted_chars<<char

    indices=self.get_matching_indices(char)

    filling= self.fill_indices(char, indices)

    @remaining_incorrect_guesses-=1 if indices.empty?
    return true

  end

  def ask_user_for_guess
    p "Enter a char: "
    guess= gets.chomp
    return try_guess(guess)

  end

  def win?
    if @secret_word.split("")==@guess_word
      p "WIN" 
      return true
    end
    return false

    #return false
  end

  def lose?
    if @remaining_incorrect_guesses<=0
      p "LOSE"
      return true
    end
    return false

  end

  def game_over?

    if lose? || win?
      p @secret_word
      return true
    else 
      return false
    end
  end

end
