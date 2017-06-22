# 13.6 orange tree p.133
class OrangeTree
	def initialize 
		@height = 0
		@count_the_oranges = 0
		@alive = true
	end

	def height
		if @alive
			@height.to_i
		else
			puts "Dead tree is not very tall."
		end
	end

	def count_the_oranges
		if @alive
			@count_the_oranges
		else
			puts "A dead tree has no oranges"
		end
	end

	def one_year_passes
		if @alive
			@height = @height + 0.3
			@count_the_oranges = 0 #ols oranges fall off

			if @height > 10 && rand(2) > 0
				@alive = false
				puts "Oh no the tree has died, too old"
			elsif @height > 2 #new oranges grow
				@count_the_oranges = (@height * 15 - 25).to_i
				puts "This year the tree grew to #{@height.to_i} and produced #{@count_the_oranges}."
			else
				puts "This year the tree grew to #{@height} but too young to produce oranges."
			end
		
		else
			puts "A year later the tree is still dead."
		end
	end

	def pick_the_oranges
		if @alive
			if @count_the_oranges > 0
			@count_the_oranges = @count_the_oranges - 1
			puts "Pick oranges, they are delicious!"
			else
				puts "You search every branch but find no oranges"
			end
		else
			puts "A dead tree has nothing to pick"
		end
	end
end

ot = OrangeTree.new
15.times do 
	ot.one_year_passes
end
puts(ot.one_year_passes)
puts(ot.count_the_oranges)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)	
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.count_the_oranges)
puts(ot.pick_the_oranges)














