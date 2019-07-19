require('rspec')
require('anagrams')

describe('#is_word?') do
   it("checks to see if inputted words are valid words") do
    expect(is_word?('yurb','ruby')).to(eq(false))
  end
end

describe('#is_anagram?') do
  it("returns 'anagram' if two words are anagrams") do
    expect(is_anagram?('goat','toga')).to(eq('anagram'))
  end
  it("returns 'antigram' if two words share none of the same letters") do
   expect(is_anagram?('pork','field')).to(eq('antigram'))
 end
  it("returns 'anagram' or 'antigram' if two words are anagrams despite capitalization varianc") do
    expect(is_anagram?('goat','Toga')).to(eq('anagram'))
  end
  it("returns 'anagram' or 'antigram' for two phrases") do
    expect(is_anagram?('School master','The classroom')).to(eq('anagram'))
  end
end
