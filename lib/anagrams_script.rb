require_relative('./anagrams.rb')
require('oxford_dictionary')
require('dotenv/load')

client = OxfordDictionary::Client.new(app_id: ENV['ID'], app_key: ENV['KEY'])
client = OxfordDictionary.new(app_id: ENV['ID'], app_key: ENV['KEY'])

while true
  p 'Enter a word or phrase'
  input_1 = gets.chomp
  entry_1 = client.entry(word: input_1.downcase, dataset: 'en-gb', params: {}).results[0].lexicalEntries[0].entries[0].senses[0].definitions[0]
  p "Definition of #{input_1}: #{entry_1}"
  p 'Enter another word or phrase'
  input_2 = gets.chomp
  entry_2 = client.entry(word: input_2.downcase, dataset: 'en-gb', params: {}).results[0].lexicalEntries[0].entries[0].senses[0].definitions[0]
  p "Definition of #{input_2}: #{entry_2}"
  anagram = Anagram.new(input_1,input_2).is_anagram?
end
