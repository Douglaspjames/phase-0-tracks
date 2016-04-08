Class Drum_set



#CHARACTERISTICS ----------------
Type of drums (string)
Type of cymbal (int)
finish (color) (string)



Methods 
Sound method "That #{brand_name} set sounds great!"
kick_drum method "hits kisk drum (x) times"
crash method "hits crash (x) times"


class Drum_set
	attr_reader :brand, :cymbal
	attr_accessor :color, :age

	def initialize(brand, color, cymbal, age)
		puts "Initializing drum set..."
		@brand = brand
		@cymbals = cymbal
		@color = color
		@age = age
	end

	def kick_drum(num)
		num.times do
			puts "Kick!"
		end
	end

	def sound(brand)
		puts "This #{@brand} drum set sounds amazing!"
		@brand
	end

	def crash(num)
		num.times do
			puts "*CRASH!!*"
		end
	end

	def age
		puts "Your drumset is #{@age} years old"
		@age
	end
end


brands = ["Rogers", "Slingerland", "Drum Workshop", "Tama", "Ludwig"]
colors = ["Black diamond pearl", "Champagne sparkle", "Silver sparkle", "Red sparkle", "Black"]
cymbal = ["Crash", "Ride", "Splash", "China type", "Ice bell"]
ages = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]





drum_sets = []

4.times do |x|
	drum_sets << Drum_set.new(brands.sample, colors.sample, cymbal.sample, ages.sample)
	puts ""
	puts ""
	p drum_sets[x].sound(@brand)
	puts "Test the kick drum!"
	p drum_sets[x].kick_drum(rand(3..6))
	puts "Crash the cumbal!"
	p drum_sets[x].crash(rand(3..6))
	p drum_sets[x].age
	p drum_sets
end


user_drumset_choices = []

puts "Welcome th the drumset creator"
puts "Would you like to create a drumset?(Y/N)"
  response = gets.chomp
    while response == "Y"
       puts "Choose the brand."
    	p brands
    	brand_choice = gets.chomp
    	puts "Choose the color/finish"
    	p colors
    	color_choice = gets.chomp
    	puts "Choose cymbal"
    	p cymbal
    	cymbal_choice = gets.chomp
    	puts "How old should the drumset be? (In years, 1-10)"
    	age_choice = gets.chomp
    	user_drumset_choices << Drum_set.new(brand_choice, color_choice, cymbal_choice, age_choice)
    end
 

p user_drumset_choices







