require_relative('./anagrams.rb')
require('oxford_dictionary')
require('dotenv/load')

client = OxfordDictionary::Client.new(app_id: ENV['ID'], app_key: ENV['KEY'])
client = OxfordDictionary.new(app_id: ENV['ID'], app_key: ENV['KEY'])

while true
  p 'Enter a word or phrase'
  input_1 = gets.chomp
  entry = client.entry(word: input_1, dataset: 'en-gb', params: {})
  p entry.lexicalEntries.first
  p 'Enter another word or phrase'
  input_2 = gets.chomp
  entry = client.entry(word: input_2, dataset: 'en-gb', params: {})
  p entry.lexicalEntries.first
  anagram = Anagram.new(input_1,input_2).is_anagram?
end
