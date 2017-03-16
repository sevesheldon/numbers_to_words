class Fixnum
  define_method(:numbers_to_words) do
    number_hash = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four",
                    5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine",
                    10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen",
                    14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen",
                    18 => "eighteen", 19 => "nineteen" }

    number_hash_two_digits = { 0 => "", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty",
                              6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety" }


                                                                                #reversed_hash = Hash[number_hash.to_a.reverse]
    number_word = ""
    number = self
    number_split = number.to_s().split('').map(&:to_i) #.map { |x| x.to_i }

    if number < 20
      number_word = number_hash.fetch(number)
    elsif number < 100
      number_word = number_hash_two_digits.fetch(number_split[0])
      number_word = number_word.concat(" " + number_hash.fetch(number_split[1]))
    elsif number < 1000
      number_word.concat(number_hash.fetch(number_split[0]) + " hundred ")
        if number_split[1] < 2
          number_split = [ number_split[1], number_split[2] ].join().to_i()
          number_word.concat(number_hash.fetch(number_split))
        else
          number_word.concat(number_hash_two_digits.fetch(number_split[1])).concat(" " + number_hash.fetch(number_split[2]))
        end

    end


    number_word = number_word.split()

      if number > 0 && number_word.include?("zero")
        number_word.delete("zero")
        number_word = number_word.join(" ")
      else
        number_word = number_word.join(" ")
      end
    number_word
  end
end
