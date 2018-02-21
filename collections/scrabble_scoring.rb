class ScrabbleScorer

  def initialize
    @scores = {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end

  def convert_to_points(word)
    score = 0
    letters_array = word.upcase.split('')
    letters_array.each do |letter|
      # puts "#{letter} has the value of #{@scores[letter]}"
      score += @scores[letter]
    end
    puts "#{word} has the total score of #{score}"
  end

end

word = "hello"

converter = ScrabbleScorer.new
converter.convert_to_points(word)
