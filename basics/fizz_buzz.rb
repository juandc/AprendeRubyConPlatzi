# Write a program that prints the numbers from 1
# to 100. But for multiples of three print "Fizz"
# instead of the number and for the multiples of 
# five print "Buzz". For numbers which are multiples 
# of both three and five print "FizzBuzz".

# - JS Test in https://codeable.pe 😎

puts "---\n\n"

# LONG WAY (For cicle)
for number in 1..100 do
  is_fizz = number % 3 === 0
  is_buzz = number % 5 === 0
  print_message = ""

  if is_fizz
    print_message += "Fizz"
  end

  if is_buzz
    print_message += "Buzz"
  end

  if !is_fizz && !is_buzz
    print_message = number
  end

  puts print_message
end

puts "\n---\n\n"

# TIMES WAY (simpler)
100.times do |number|
  next if number === 0 # `.times` starts at 0 👮

  if number % 15 === 0
    puts "FizzBuzz"
  elsif number % 5 === 0
    puts "Buzz"
  elsif number % 3 === 0
    puts "Fizz"
  else
    puts number
  end
end

puts "\n---\n\n"

# SHORTER WAY (from internet)
puts (1..100).map {|i|
	fizz = i % 3 == 0 ? 'Fizz' : nil
	buzz = i % 5 == 0 ? 'Buzz' : nil
	fizz || buzz ? "#{ fizz }#{ buzz }" : i
  }

puts "\n---\n\n"

# SHORTEST FOR NEVER EVER WAY wtf!?? (from internet)
puts (1..100).map{|i|r=["Fizz"][i%3];r="#{r}Buzz"if i%5==0;r||i}
