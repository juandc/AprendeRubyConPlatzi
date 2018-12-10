# Different cicles

# White way - normal
puts "While"
while_times = 1
while while_times < 5 do
  puts "Hey, #{while_times}"
  while_times += 1
end

# Loop way - normal
puts "\nLoop"
loop_times = 1
loop do
  puts "Hey, #{loop_times}"
  loop_times += 1
  break if loop_times >= 5
end

# For way - normal
puts "\nFor"
for i in 1..4 do
  puts "Hey, #{i}"
end

# Array "Each" lamda - I like it :)
# - I do this all time in React 😂
puts "\nEach"
[1,2,3,4].each { |each_times| puts "Hey, #{each_times}" }

# Integer "Times" lambda - I NEED IT IN JS!!!
# - AWESOMEEEEE
puts "\nTimes"
4.times { |times_time| puts "Hey, #{times_time}" }
