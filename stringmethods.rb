var1 = "stop"
var2 = "deliver repaid desserts"
var3 = "...B HSUP A magic spell?"

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts "What is your name?"
name = gets.chomp
puts "Did you know there are " + name.length + "characters"
puts "in your name, " + name + "?"

puts "What is full your name?"
name = gets.chomp
puts "Did you know there are " + name.length.to_s + " characters"
puts "in your name, " + name + "?"

letters = "aDgFhjGjJJ"
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts "a".capitalize
puts letters

line_width = 70
puts ("Old mother hubbard".center(line_width))
puts ("Sat in your capboard".center(line_width))
puts ("Eating her curds and whey".center(line_width))
puts ("When along came a spider".center(line_width))
puts ("Who sat down beside her".center(line_width))
puts ("And scared her. poor shoe dog away".center(line_width))

line_width = 40
str = "--> text <--"
puts (str.ljust(line_width))
puts (str.center(line_width))
puts (str.rjust(line_width))
puts (str.ljust(line_width/2) + str.rjust(line_width/2))

# Angry boss chapter 6.2
puts "What do you want today?"
answer = gets.chomp.upcase
puts "WHATDAYA MEAN #{answer}?! YOU\'RE FIRED!"

# Table of contents chapter 6.2
line_width = 30
puts ("Table of Content".center(line_width*2))
puts ""
puts ("Chapter 1: Getting Started".ljust(line_width) + "page 1".rjust(line_width/2))
puts ("Chapter 2: Numbers".ljust(line_width) + "page 9".rjust(line_width/2))
puts ("Chapter 3: Letters".ljust(line_width) + "page 13".rjust(line_width/2))

table_name = "Table of Content"
line_width = 20
line1 = "Chapter 1: Getting Started".ljust(line_width) + "page 1".just(line_width)
line2 = "Chapter 2: Numbers".ljust(line_width) + "page 9".rjust(line_width)
line3 = "Chapter 3: Letters".ljust(line_width) + "page 13".rjust(line_width)
puts table_name.center(line_width)
puts line1
puts line2
puts line3





