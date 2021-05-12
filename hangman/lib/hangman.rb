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
