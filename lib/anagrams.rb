class Anagram
  def initialize (word_1,word_2)
    @word_1 = word_1.downcase
    @word_2 = word_2.downcase
    p "first word: #{@word_1}"
    p "second word: #{@word_2}"
  end
  
  def word?
    if @word_1.split('').any? { |x| ['a','e','i','o','u'].include?(x) } == true && @word_2.split('').any? { |x| ['a','e','i','o','u'].include?(x) } == true
      return true
    else
      return false
    end
  end

end
# p 'Enter a word'
# input_1 = gets.chomp
# p 'Enter another word'
# input_2 = gets.chomp
# anagram = Anagram.new(input_1,input_2)
# p anagram.word?
