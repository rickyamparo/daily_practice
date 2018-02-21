require 'pry'
class CreditCheck

  def double_digits(card_array)
    doubled_array = []
    card_array.each_with_index do |number, index|
      if index.even?
        doubled_array << number.to_i * 2
      else
        doubled_array << number.to_i
      end
    end
    doubled_array
  end

  def add_digits_over_ten(doubled_array)
    doubled_array.map do |number|
      if number > 9
        (1 + (number % 10))
      else
        number
      end
    end
  end

  def check_validity(card_number)
    card_array = card_number.split('')
    doubled_array = double_digits(card_array)
    sum_over_ten = add_digits_over_ten(doubled_array)
    validity_output(sum_over_ten.reduce(:+), card_number)
  end

  def validity_output(sum, card_number)
    if sum % 10 == 0
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
