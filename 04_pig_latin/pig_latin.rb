def translate(sentence)

  vowels = ['a', 'e', 'i', 'o', 'u']
  words = sentence.split(' ')

  pig_latin_words = words.map do |word|

    if vowels.include?(word[0])
      word + 'ay'
    else

      consonants = ''
      rest_of_word = ''

      word.each_char.with_index do |char, index|

        if vowels.include?(char) && !(consonants.end_with?('q') && char == 'u')
          rest_of_word = word[index..-1]
          break
        else
          consonants += char
        end

      end

      rest_of_word + consonants + 'ay'

    end
  end

  pig_latin_words.join(' ')
end
