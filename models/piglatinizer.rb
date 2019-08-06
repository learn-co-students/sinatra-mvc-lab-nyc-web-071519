class PigLatinizer
    attr_accessor :words

    def initialize
    end

    def piglatinize_word(word)
        array = word.split('')
        array << 'way'  if ['a','e','i','o','u','A','E','I','O','U'].include?(array[0]) 
        while !['a','e','i','o','u','A','E','I','O','U'].include?(array[0]) do
            array << array.shift()
        end
        array << 'ay' unless array[-1] == 'way'
        array.join('')
    end

    def piglatinize (string)
        array = string.split(' ')
        array = array.map{|word| piglatinize_word(word)}
        array.join(' ')
    end


end