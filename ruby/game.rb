# a simple random number generator guessing game

puts "Hello player, "
puts "Please guess a number between 1 and 10"

guess = gets.to_i

num = rand(10) + 1

if guess == num
  puts "good job"
elsif guess > num
  puts "that is too high"
elsif guess < num
  puts "that is too low"
end

puts "The number was " + num.to_s


