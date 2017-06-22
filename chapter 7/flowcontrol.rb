puts 1 > 2
puts 1 < 2
puts 5 >= 5
puts 5 <= 4
puts 1 == 1
puts 2 != 1
puts "cat" < "dog"
puts "bug lady" < "Xander"
puts "bug lady".downcase < "Xander".downcase
puts 2 <10
puts "2" < "10"

puts "Hello,what\'s your name?"
name = gets.chomp
puts "Hello, " + name + "."
if name == 'Chris'
	puts "What a lovely name!"
end

puts "I am a fortune teller. Tell me your name:"
name = gets.chomp
if name == 'Chris'
	puts "I see great things in your future."
else
	puts "Your future is ..oh my! Look at the time!"
end

puts "Hello, and wlcome to seventh grade english"
puts "My name is Ms Lee. And your name is..?"
name = gets.chomp
if name == name.capitalize
	puts "Please take a seat, " + name + "."
else
	puts name + "? You mean " + name.capitalize + ", right?"
	puts "Do not you even know how to spell your name??"
	reply = gets.chomp

	if reply.downcase == "yes"
		puts "Hmmmph! Well, sit down!"
	else 
		puts "GET OUT!!"
	end
end

input = ""
while input != "bye"
	puts input
	input = gets.chomp
end
puts "Come again soon!"

while true
	input = gets.chomp
	puts input
	if input == "bye"
		break
	end
end
puts "Come again soon!"

puts "Hello,what\'s your name?"
name = gets.chomp
puts "Hello, " + name + "."
if name == 'Chris' || name == "Katy"
	puts "What a lovely name!"
end

while true
	puts "What would you like to ask C to do?"
	request = gets.chomp
	
	puts 'You say, "C, please  '+ request + '"'
	
	puts "C\'s response:"
	puts ' "C ' + request + '."'§
	puts ' "Papa ' + request + ', too."'
	puts ' "Mama ' + request + ', too."'

	if request == "stop"
		break
	end
end

# 99 bottles of beer on the wall chapter 7.5
number_of_bottles = 7
number_new = number_of_bottles

while number_new > 1
	puts number_new.to_s + " bottles of beer on the wall, " + number_new.to_s + " bottles of beer."
	number_new = number_new - 1
	puts "Take one down and pass it around, " + number_new.to_s + " bottles of beer on the wall."
end
	puts "1 bottle of beer on the wall, 1 bottle of beer."
	puts "Take one down and pass it around, no more bottles of beer on the wall."
	
	puts "No more bottles of beer on the wall, no more bottles of beer."
	puts "Go to the store and buy some more, 7 bottles of beer on the wall."

# deaf grandma chapter 7.5

while true
	question = gets.chomp
	puts "HUH?! SPEAK UP, SONNY!"
	puts "NO, NOT SINCE 19" + (rand(21) + 30).to_s + "!"
		if question == "BYE"
			break
		end
end

puts "HELLO, SONNY!"

while true
	question = gets.chomp
	if question == "BYE"
		puts "BYE SONNY"
		break
	end
	if question != question.upcase
		puts "HUH?! SPEAK UP, SONNY!"
	else
		puts "NO, NOT SINCE 19" + (rand(21) + 30).to_s + "!"
	end
end	

# deaf grandma extended chapter 7.5
puts "HELLO, SONNY!"
bye_count = 0

while true
	question = gets.chomp
	if question == "BYE"
		bye_count = bye_count + 1
	else 
		bye_count = 0
	end
	if bye_count >= 3
		puts "BYE SONNY"
		break
	end
	if question != question.upcase
		puts "HUH?! SPEAK UP, SONNY!"
	else
		puts "NO, NOT SINCE 19" + (rand(21) + 30).to_s + "!"
	end
end	


# leap years chapter 7.5
puts "What is your starting year?"
starting_year = gets.chomp.to_i
puts "What is your ending year?"
ending_year = gets.chomp.to_i
puts "There are leap years in your range:"

year = starting_year

while year <= ending_year
	if year%4 == 0
		if year&100 != 0 || year&400 == 0
			puts year
		end
	end
	year = year + 1
end


	puts starting_year + 4 















