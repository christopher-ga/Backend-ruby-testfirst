# book.rb

class Book
  attr_accessor :title

  def title=(new_title)
    @title = titleize(new_title)
  end

  def titleize(title)
    little_words = ["a", "an", "and", "the", "in", "of"]
    words = title.split
    words.each_with_index.map do |word, index|
      if little_words.include?(word) && index != 0
        word
      else
        word.capitalize
      end
    end.join(' ')
  end
end