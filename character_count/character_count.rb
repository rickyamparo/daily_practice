class CharacterCount

  def count(string)
    string_array = string.split('')
    string_hash = {}
    string_array.each do |character|
      if string_hash[character].nil?
        string_hash[character] = 1
      else
        string_hash[character] += 1
      end
    end
    string_hash = string_hash.sort_by {|key, value| value}.reverse
    string_hash.each do |key, value|
      puts "#{key}: #{value}"
    end
  end

end

counter = CharacterCount.new
counter_2 = CharacterCount.new
counter.count("aaabbc")
counter_2.count("I really want to work for Wingspan")
