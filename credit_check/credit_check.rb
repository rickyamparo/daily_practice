 class CreditCheck

   def check_validity(card_number)
     puts card_number
   end

 end

card = "4929735477250543"

checker = CreditCheck.new
checker.check_validity(card)
