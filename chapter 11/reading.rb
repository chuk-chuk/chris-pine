end
# 11.3 saving and loading for grown-ups

filename = "lister.txt"
test_string = "Ipromise i will never do it again."+
"I will never fail."

File.open filename, "w" do |f|
	f.write test_string
end

read_string = File.read filename

puts(read_string == test_string)

# didversion "double-quoted strings"
quote_1 = '\'kiss rocks\'?
why would anyone want to kiss rocks...
wait I got it.'

quote_2 = "'kiss rocks'?\n" +
"why would anyone want to kiss rocks...\n" +
"wait I got it."

puts quote_1
puts
puts(quote_1 ==quote_2)

require 'yaml'
test_array = ['gime me a chance','start raining', 'take your bag']
test_string = test_array.to_yaml

filename = 'lister.txt'

File.open filename, 'w' do |f|
	f.write test_string
end

read_string = File.read filename

read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array == test_array)

require 'yaml'

def yaml_save(object, filename)
	File.open filename, 'w' do |f|
		f.write(object.to_yaml)
	end
end

def yaml_load(filename)
	yaml_string = File.read filename
	YAML::load yaml_string
end

test_array = ['my shoes', 'this day', 'travel the world']
filename = 'lister.txt'

yaml_save(test_array, filename)

read_array = yaml_load filename

puts(read_array == test_array)

#11.8 Safer picture downloadidng
Dir.chdir("/Users/yulialitvinchuk/Pictures/moved-images")
pic_names = Dir['/Users/yulialitvinchuk/Projects/original-images/*.{jpg,JPG}']

puts "what would you like to cal this batch?"
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
	print " . "
	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end

	File.rename name, new_name
	pic_number = pic_number + 1
end

#def File.exist?(name)
#	self
#end

#def exit
#	return name if File.exist? 
#end

puts 
puts "Done cutie!"

# 11.8 build your own playlist
track_names = shuffle(Dir['/Users/yulialitvinchuk/Music/cds/*.ogg'])

File.open 'playlist.m3u', 'w' do |f|
	track_names.each do |ogg|
		t.write ogg + "\n"
	end
end
puts "Done"
























































