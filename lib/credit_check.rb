require 'pry'

# from the rightmost digit, which is the check digit, moving left, double the value of every second digit
# if product of this doubling operation is greater than 9 (e.g., 7 * 2 = 14), then sum the digits of the products
# take the sum of all the digits
# if and only if the total modulo 10 is equal to 0 then the number is valid

id = "4929735477250543"

def credit_check(id)
  id = id.reverse.split('')
  total_sum = 0
  count = 0
    id.each do |num|
      if count.even?
        total_sum += num.to_i
      elsif num.to_i * 2 > 9
        double = num.to_i * 2
        odd_num = double.to_s.split('')
        odd_num.each do |number|
          total_sum += number.to_i
        end
        total_sum
      else
        total_sum += num.to_i * 2
      end
      count += 1
    end

puts total_sum

  if total_sum % 10 == 0
    puts "The number is valid!"
  else
    puts "The number is invalid!"
  end
end

credit_check(id)
