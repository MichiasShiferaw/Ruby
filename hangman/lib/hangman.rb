require "byebug"

class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def initialize
    @secret_word= Hangman.random_word
    @guess_word=Array.new(secret_word.length, "_")
    @attempted_chars=[]
    @remaining_incorrect_guesses=5
  end
