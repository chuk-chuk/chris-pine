var1 = 2
var2 = "5"
puts var1.to_s + var2
puts var1 + var2.to_i

puts "15".to_f
puts "99.999".to_f
puts "99.999".to_i
puts ""
puts "5 is my favorite number!".to_i
puts "who asked you about 5 or whatever?".to_i
puts "your momma did".to_f
puts ""
puts "stringy".to_s
puts 3.to_i

# puts gets
puts "Hello there, and what\'s your name?"
name = gets
puts "Your name is " + name + "? What a lovely name!"
puts "Pleased to meet you, " + name + ", :-)"

puts "Hello there, and what\'s your name?"
name = gets.chomp
puts "Your name is " + name + "? What a lovely name!"
puts "Pleased to meet you, " + name + ", :-)"

# Full name greeting chapter 5.6
puts "What is your first name?"
first = gets.chomp
puts "What is your middle name?"
middle = gets.chomp
puts "What is your last name?"
last = gets.chomp
puts "Welcome home #{first} #{middle} #{last}!"


#Bigger, better favorite number chapter 5.6
puts "What is your favorite number?"
number = gets.chomp.to_i
result = number + 1.to_i
puts "I bet #{result} is bigger and better then #{number}!"
