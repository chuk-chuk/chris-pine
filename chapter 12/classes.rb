#chapter 12 new classes of objects
beta = String.new + "hello"
puts "beta = #{beta}"

time = Time.new
puts time
puts Time.local(1985, 1, 6, 17, 23)
puts Time.gm(1966, 5,7)

puts(Time.local(1984, 1, 6, 17, 23) - Time.local(1985, 1, 6, 17, 23))
# * * *

puts "what year you were born?"
year = gets.chomp
puts "what month you were born?"
month = gets.chomp
puts "what date you were born?"
date = gets.chomp

current = Time.new

age = (current - Time.local(year, month, date))/ 31536000
age = age.to_i

puts(age.times{|x| puts "SPANK!"})

#12.3 the hash class
dict_hash = {}

dict_hash["table"] = 'candle'
dict_hash['door'] = 'lock'
dict_hash['green'] = 'color'

dict_hash.each do |c_w, w|
	puts "#{c_w}: #{w}"
end

letters = "a".."c"
puts(['a',"b",'c'] == letters.to_a)

('A'..'Z').each {|l| print l}

da = 'Mr. T'
big_T = da[4]
puts big_T
puts ?T
puts 84.chr

name  = 'yulia'
puts name[0] if name[0] == ?y

#12.6 Birthday helper
birth_dates = {} #empty hash

File.read("lister.txt").each_line do |line| #look at the file and deal with each line
	line = line.chomp #separate each line, no spaces no commas
first_comma = 0 #start count from the first comma in the line
	while line[first_comma].chr != "," && first_comma < line.length #conditions: find an index of first comma
		first_comma = first_comma + 1
	end
	name = line[0..(first_comma-1)]
	date = line[-12..-1]

	birth_dates[name] = date
end

puts "whose birthday do you wish to know?"
name = gets.chomp
date = birth_dates[name] 

if date == nil
	puts "oooh, i dont know that one..."
else
	puts date[0..5]
end

birth_dates = {} #empty hash

File.read("lister.txt").each_line do |line| #look at the file and deal with each line
	name, date, year = line.split(",")
	birth_dates[name] = date
end

puts "whose birthday do you wish to know?"
name = gets.chomp
date = birth_dates[name] 

if date == nil
	puts "oooh, i dont know that one..."
else
	puts date
end






















