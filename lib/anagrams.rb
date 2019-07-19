require('ruby-dictionary')

class Anagram
  def initialize (word_1,word_2)
    @input_1 = word_1
    @input_2 = word_2
    @word_1 = word_1.downcase.delete(' ',"'").split('').sort
    @word_2 = word_2.downcase.delete(' ',"'").split('').sort
  end

  def is_word?
    if @word_1.any? { |x| ['a','e','i','o','u'].include?(x) } == true && @word_2.any? { |x| ['a','e','i','o','u'].include?(x) } == true
      return true
    else
      return false
    end
  end

  def letter_match
    letter_array = []
    @word_1.each do |x|
      if @word_2.include?(x)
        letter_array.push(x)
      end
    end
    return letter_array.uniq.join(" ")
  end

  def is_anagram?
    if self.is_word? == true
      if @word_1 != @word_2 && @word_1.any? { |x| @word_2.include?(x) } == false
        p "'#{@input_1}' and '#{@input_2}' are antigrams"
        false
      elsif @word_1 != @word_2
        p "'#{@input_1}' and '#{@input_2}' are not anagrams. However, they do share the letters: #{self.letter_match}"
        false
      elsif @word_1 == @word_2
        p "'#{@input_1}' and '#{@input_2}' are anagrams"
        true
      end
    else
      p 'please enter a valid word'
    end
  end
end
