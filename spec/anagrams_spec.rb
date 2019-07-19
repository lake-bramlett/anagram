require('rspec')
require('anagrams')

describe('#is_word?') do
  it("returns false if one or more words are no valid") do
    test_anagram = Anagram.new('sdfs','ruby')
    expect(test_anagram.is_word?).to(eq(false))
  end
   it("returns true if both words are valid") do
    test_anagram = Anagram.new('goat','ruby')
    expect(test_anagram.is_word?).to(eq(true))
  end
end

describe('#is_anagram?') do
  it("returns false if two words are not anagrams") do
    test_anagram = Anagram.new('goat','pork')
    expect(test_anagram.is_anagram?).to(eq(false))
  end
  it("returns true if two words are anagrams") do
    test_anagram = Anagram.new('goat','toga')
    expect(test_anagram.is_anagram?).to(eq(true))
  end
  it("returns false if two words share none of the same letters") do
    test_anagram = Anagram.new('pork','field')
    expect(test_anagram.is_anagram?).to(eq(false))
 end
  it("returns true or 'antigram' if two words are anagrams despite capitalization variance") do
    test_anagram = Anagram.new('goat','Toga')
    expect(test_anagram.is_anagram?).to(eq(true))
  end
  it("returns true for two phrases that are anagrams") do
    test_anagram = Anagram.new('School master','The classroom')
    expect(test_anagram.is_anagram?).to(eq(true))
  end
 #  it("returns 'antigram' for two phrases that are antigrams") do
 #    expect(is_anagram?('I am sick','get your gun')).to(eq('antigram'))
 #  end
end
