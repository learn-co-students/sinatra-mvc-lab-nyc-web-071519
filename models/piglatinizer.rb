class PigLatinizer

    attr_reader :words

    def initialize
        @words = words
    end

    def piglatinize(words)
        words_arr = words.split(" ")
        words_arr.each do |word|
            if word.start_with?("a") || word.start_with?("e") || word.start_with?("i") || word.start_with?("o") || word.start_with?("u") || word.start_with?("A") || word.start_with?("E") || word.start_with?("I") || word.start_with?("O") || word.start_with?("U")
                word << "way"
            else
                until word.start_with?("a") || word.start_with?("e") || word.start_with?("i") || word.start_with?("o") || word.start_with?("u") || word.start_with?("A") || word.start_with?("E") || word.start_with?("I") || word.start_with?("O") || word.start_with?("U")
                    word << word[0]
                    word.slice!(0)
                end
                word << "ay"
            end
        end
        pl_text = words_arr.join(" ")
    end

end