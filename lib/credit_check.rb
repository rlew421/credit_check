require 'pry'

card_number = "5541808923795240"

int_array = card_number.split("").map(&:to_i)

i = 0
sum = 0
int_array.each do |int|
    int *= 2 if i.even?

    int = (1 + (int - 10)) if int >= 10

    sum += int
    i += 1
end

if sum % 10 == 0
    puts "The number #{card_number} is valid!"
else
    puts "The number #{card_number} is invalid!"
end