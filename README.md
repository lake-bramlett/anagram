| Spec | Input | Output |
|---- |:---:|----:|
| returns false if one or more words are no valid | 'sdfs','ruby' | false |
| returns true if both words are valid | 'goat','ruby' | true |
| returns 'not an anagram' if two words are not anagrams | 'goat','pork'| not an anagram |
| returns 'anagram' if two words are anagrams | 'goat','toga' | anagram |
| returns 'antigram' if two words share none of the same letters | 'pork', 'field' | antigram |
| returns 'anagram' or 'antigram' if two words are anagrams despite capitalization variance | 'goat','Toga' | anagram |
| returns 'anagram' for two phrases that are anagrams |'School master','The classroom'  | anagram |
| returns 'antigram' for two phrases that are antigrams | 'I am sick','get your gun' | antigram
