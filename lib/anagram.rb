# Your code goes here!
class Anagram
    attr_accessor :anagram_word

    def initialize(anagram_word)
        @anagram_word = anagram_word
    end

    def match(array_words)
        matched_words = []
        array_words.map do |word|
             if word.chars.sort == anagram_word.chars.sort
                  matched_words << word   
             end
             
        end
        return matched_words
    end
end

listen = Anagram.new("listen")

listen.match(%w[enlists google inlets banana])