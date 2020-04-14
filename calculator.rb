def multiply(first_num, second_num)
  first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
  first_num.to_f / second_num.to_f
end

def sum(first_num, second_num)
  first_num.to_f + second_num.to_f
end

def subtract(first_num, second_num)
   second_num.to_f - first_num.to_f
end

def mod(first_num, second_num)
  first_num.to_f % second_num.to_f
end




puts "Simple Calculator"
25.times { print "-" }
puts
puts "Enter the first number"
num_1 = gets.chomp
puts "Enter second number"
num_2 = gets.chomp
puts "What do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction, 4 for dividion or 5 for remainder"
user_selection = gets.chomp
if user_selection == "1"
  puts "You have chosen to multiply"
  puts "The first number multiplied by the second number is #{ multiply(num_1, num_2) }"
elsif user_selection == "2"
  puts "You have chosen to add"
  puts "The sum of the 2 numbers is #{ sum(num_1, num_2) }"
elsif user_selection == "3"
  puts "You have chosen to subtract"
  puts "The first number subtracted from the second number is #{ subtract(num_2, num_1) }"
elsif user_selection == "4"
  puts "You have chosen to divide"
  puts "The first number divided by the second number is #{ divide(num_1,  num_2) }"
elsif user_selection == "5"
  puts "You have chosen the remainder"
  puts "The remainder of the first number divided by the second number is #{ mod(num_1, num_2) }"
else
  puts "Invalid entry"
end