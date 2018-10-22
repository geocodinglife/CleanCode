###################################
# OOP way
###################################
1.upto(100) do |number|
  string = ''

  string += "Fizz" if (number % 3).zero?
  string += "Buzz" if (number % 5).zero?
  string += number if string.empty?

  puts string
end

################################
# Old way
# NOTE FizzBuzz string has to be
# before the others to work line 22
################################

1.upto(100) do |i|
  if i 3 == 0 && i % 5 == 0
    puts "FizzBuzz"
  elsif i % 3 == 0
    puts "Fizz"
  elsif i % 5 == 0
    puts i
  end
end
