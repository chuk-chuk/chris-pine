[]
[5]
["Hello", "Goodbye"]

flavor = "vanila"
[89.9, flavor, [true, false]]

names = ["ada", "eva", "chris"]
puts names
puts
puts names[0]
puts names[1]
puts names[3]
 
other_peeps = []
other_peeps[3] = "bee"
other_peeps[0] = "ahaha"
other_peeps[1] = "see"
puts other_peeps

languages = ["english", "ruby", "russian"]

languages.each do |lang|
	puts "I love " + lang + "!"
	puts "Don\'t you?"
end
puts "and Jave too..."

3.times do
	puts "Hello"
end

foods = ["salad", "pasta", "juice"]
puts foods
puts
puts foods.to_s
puts
puts foods.join(", ")
puts
puts foods.join(" :-) ") + " 8)"

fab = []
fab.push "rain"
fab.push "wind"
puts fab
puts fab[0]
puts fab.last
puts fab.length
puts
puts fab.pop
puts fab
puts fab.length

# Building and sorting an array chapter 8.3
puts "Type as many words as you want here(one word per line):"
words = []

while true
	your_words = gets.chomp
	if your_words == ""
		break
	end
	words.push your_words
end
puts "Your sorted words are below:"
puts words.sort!

# Table of Content, revisited chapter 8.3
content = ["Table of Content", "Chapter 1: Getting Started", "page 1", "Chapter 2: Numbers", "page 9", "Chapter 3: Letters ", "page 13"]
line_width = 30
puts content[0].center(line_width*2)
puts content[1].ljust(line_width) + content[2].rjust(line_width/2)
puts content[3].ljust(line_width) + content[4].rjust(line_width/2)
puts content[5].ljust(line_width) + content[6].rjust(line_width/2)

heading = "Table of Content"
chapters = [["Getting Started", 1],["Numbers", 9],["Letters", 13],["New Line Test", 34]]

puts heading.center(60)
puts

chapter_numbers = 1
chapters.each do |x|
	chapter_name = x[0]
	chapter_page = x[1]
	start = "Chapter " + chapter_numbers.to_s + ": " + chapter_name 
	ending = "page " + chapter_page.to_s
	puts start.ljust(30) + ending.rjust(20)
	chapter_numbers = chapter_numbers + 1
end














