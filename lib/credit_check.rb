# # Your Luhn Algorithm Here

def are_you_luhn_complete?(credit_card_digits)
  current_sum = 0 
  credit_card_digits = credit_card_digits.to_s.reverse.chars.map(&:to_i)

  credit_card_digits.each_slice(2) do |first_number,second_number|
    current_sum += first_number
    second_number *= 2 
    second_number = second_number.divmod(10).reduce(:+) if second_number > 9 
    current_sum += second_number
  end
  
  return current_sum % 10 == 0 

end


# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"

puts are_you_luhn_complete?(5541808923795240) ?  "The number is valid" : "The number is invalid"
puts are_you_luhn_complete?(5541801923795240) ?  "The number is valid" : "The number is invalid"

