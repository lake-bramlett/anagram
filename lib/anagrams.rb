class Anagram
  def initialize (word_1,word_2)
    @word_1 = word_1.downcase
    @word_2 = word_2.downcase
  end

  def is_word?
    if @word_1.split('').any? { |x| ['a','e','i','o','u'].include?(x) } == true && @word_2.split('').any? { |x| ['a','e','i','o','u'].include?(x) } == true
      return true
    else
      return false
    end
  end

  def is_anagram?
    if self.is_word? == true
      if @word_1.split('').sort != @word_2.split('').sort && @word_1.split('').any? { |x| @word_2.split('').include?(x) } == false
        p "'#{@word_1}' and '#{@word_2}' are antigrams"
        false
      elsif @word_1.split('').sort != @word_2.split('').sort
        p "'#{@word_1}' and '#{@word_2}' are not anagrams"
        false
      elsif @word_1.split('').sort == @word_2.split('').sort
        p "'#{@word_1}' and '#{@word_2}' are anagrams"
        true
      end
    else
      p 'please enter a valid word'
    end
  end

end
# p 'Enter a word'
# input_1 = gets.chomp
# p 'Enter another word'
# input_2 = gets.chomp
# anagram = Anagram.new(input_1,input_2)
# anagram.is_anagram?
