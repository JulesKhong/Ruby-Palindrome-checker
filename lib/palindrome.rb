class String
  define_method(:palindrome) do
    word_array = self.downcase().split(" ")
    letter_array = []

    word_array.each do |word|
      letters_individual = (word.split(""))
      letters_individual.each do |letter|
        letter_array.unshift(letter)
      end
    end
    letter_array.join().eql?(word_array.join())
  end
end
