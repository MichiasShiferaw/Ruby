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
