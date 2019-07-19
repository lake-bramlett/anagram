require('rspec')
require('anagrams')

describe('#word?') do
  it("returns false if one or more words are no valid") do
    test_anagram = Anagram.new('sdfs','ruby')
    expect(word?('sdfs','ruby')).to(eq(false))
  end
   it("returns true if both words are valid") do
    expect(word?('goat','ruby')).to(eq(true))
  end
end

describe('#is_anagram?') do
  it("returns 'not an anagram' if two words are not anagrams") do
    expect(is_anagram?('goat','pork')).to(eq('not an anagram'))
  end
  it("returns 'anagram' if two words are anagrams") do
    expect(is_anagram?('goat','toga')).to(eq('anagram'))
  end
  it("returns 'antigram' if two words share none of the same letters") do
   expect(is_anagram?('pork','field')).to(eq('antigram'))
 end
  it("returns 'anagram' or 'antigram' if two words are anagrams despite capitalization varianc") do
    expect(is_anagram?('goat','Toga')).to(eq('anagram'))
  end
  it("returns 'anagram' for two phrases that are anagrams") do
    expect(is_anagram?('School master','The classroom')).to(eq('anagram'))
  end
  it("returns 'antigram' for two phrases that are antigrams") do
    expect(is_anagram?('I am sick','get your gun')).to(eq('antigram'))
  end
end
