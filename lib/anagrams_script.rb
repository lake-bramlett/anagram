require_relative('./anagrams.rb')

while true
  p 'Enter a word or phrase'
  input_1 = gets.chomp
  p 'Enter another word or phrase'
  input_2 = gets.chomp
  anagram = Anagram.new(input_1,input_2)
  anagram.is_anagram?
end