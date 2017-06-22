#chapter 14 Blocks and procs

stuff = Proc.new do |good_stuff|
	puts "I like this #{good_stuff}"
end
stuff.call "chololate"

def do_imp some_proc
	puts "ba bababb"
	some_proc.call
	puts "wow"
end

say_hel = Proc.new do
	puts "HELLO"
end
say_bye = Proc.new do 
	puts "BYE"
end

do_imp(say_hel)
do_imp(say_bye)

def maybe_do some_proc
	if rand(2) == 0
		some_proc.call
	end
end

def twice_do some_proc
	some_proc.call
	some_proc.call
end
wink = Proc.new do
	puts "lol"
end

glance = Proc.new do 
	puts "glance"
end

twice_do(glance)
maybe_do(wink)

def compose(proc_1, proc_2)
	Proc.new do |x|
		proc_2.call(proc_1.call(x))
	end
end

square_it = Proc.new do |x|
	x * x
end

double_it = Proc.new do |x|
	x + x
end

double_then_square = compose(double_it, square_it)
square_then_double = compose(square_it, double_it)

puts double_then_square.call(5)
puts square_then_double.call(5)

class Array
	def each_even(&was_block_now_proc)
		is_even = true

		self.each do |object|
			if is_even
				was_block_now_proc.call object
			end

			is_even = !is_even
		end
	end
end

fruits = ['apple', 'banana', 'kiwi', 'berry']
fruits.each_even do |fruit|
	puts "I love #{fruit}"
end

[1,2,3,4,5].each_even do |num|
	puts "#{num} is not an even number"
end

# 14.4 Even better profiling chapter 14

def profile(block_description, &block)
	profiling_on = false
	if profiling_on
		start_time = Time.new
		block.call
		duration = Time.new - start_time
		puts "#{block_description}: #{duration} seconds"
	else
		block.call
	end
end

profile("25000 doublings") do
	number = 1
	25000.times do
		number = number + number
	end
	puts "#{number.to_s.length} digits"
end

profile("count to a million") do
	number = 0
	1000000.times do 
		number = number + 1
	end
end

# 14.4 grandfather clock chapter 14
def clock(&block)
	current_hour = Time.new.hour
	
	if current_hour >= 13
		current_hour = current_hour - 12
	end

	if current_hour == 0
		current_hour = 12
	end

	current_hour.times do 
	block.call
	end
end

clock do 
	puts "DONG!"
end

# 14.4 programm logger chapter 14.4
def log(string_description, &block)
	puts 'Begining "'+ string_description +'"...'
	result = block.call
	puts '..."' + string_description + '" finished the block, returning: ' + result.to_s
end

log "outer block" do 
	log "some little block" do 
		1**1 + 2**2
	end
	log "yet another block" do 
		puts "I like thai food"
	end
	"0" == 0
end















