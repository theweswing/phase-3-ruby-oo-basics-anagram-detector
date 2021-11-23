# Your code goes here!
class Anagram
  def initialize(word)
    @word = word
  end

  attr_accessor :word

  def match(words)
    letters = @word.split('')
    compare_letters = letters.sort
    matches =
      words.select do |given_word|
        split_word = given_word.split('')
        for_comparison = split_word.sort
        compare_letters == for_comparison
      end
    matches
  end
end
