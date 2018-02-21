require 'pry'
class CreditCheck

  def check_validity(card_number)
    card_array = card_number.split('')
    doubled_array = []
    card_array.each_with_index do |number, index|
      if index.even?
        doubled_array << number.to_i * 2
      else
        doubled_array << number.to_i
      end
    end

    sum_over_ten = []
    doubled_array.each do |number|
      if number > 9
        sum_over_ten << (1 + (number % 10))
      else
        sum_over_ten << number
      end
    end

    if sum_over_ten.reduce(:+) % 10 == 0
      puts "#{card_number} is valid!"
    else
      puts "#{card_number} is invalid!"
    end
  end

end

card = "4929735477250543"

card_1 = "5541808923795240"
card_2 = "4024007136512380"
card_3 = "6011797668867828"

card_4 = "5541801923795240"
card_5 = "4024007106512380"
card_6 = "6011797668868728"

checker = CreditCheck.new

checker.check_validity(card)

checker.check_validity(card_1)
checker.check_validity(card_2)
checker.check_validity(card_3)

checker.check_validity(card_4)
checker.check_validity(card_5)
checker.check_validity(card_6)
