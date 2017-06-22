# 9.5 Improved ask method
def ask (question)
	while true
		puts question
		answer = gets.chomp.downcase

		if (answer == "yes" || answer == "no")
			if answer == "yes"
				return true
			else
				return false
			end
			break
		else 
			puts "Please answer yes or no"
		end
	end
end
puts "Hello and thanks for putting your answers."
puts 
ask("Do you like apples?") 
ask("Do you like kiwi?") 
ask("Do you prefer bananas?") 
ask("Do you prefer mango?") 
puts 
puts"Debriefing:"
puts "Bye"

# 9.5 Old-school Roman numerals
def old_roman_numeral(integer)
	roman = "" 
	roman = roman + "M" * (integer / 1000)
	roman = roman + "D" * (integer % 1000 / 500)
	roman = roman + "C" * (integer % 500 / 100)
	roman = roman + "L" * (integer % 100 / 50)
	roman = roman + "X" * (integer % 50 / 10)
	roman = roman + "V" * (integer % 10 / 5)
	roman = roman + "I" * (integer % 5 / 1)
	roman
end
puts old_roman_numeral(35)

#10.1 recursion
def ask_rec(question)
	puts question
	reply = gets.chomp.downcase

	if reply == "yes" 
		true
	elsif reply == "no"
		false
	else
		puts "Please answer yes or no"
		ask_rec(question)
	end
end
ask_rec("Do you like me?")

# 10.2 sorted array
def sort(array)
	return array if array.length <= 1

	middle = array.pop
	small = array.select{|x| x < middle}
	big = array.select{|x| x >= middle}

	sort(small) + [middle] + sort(big)
end

puts sort(["how, show, lol, row"])










