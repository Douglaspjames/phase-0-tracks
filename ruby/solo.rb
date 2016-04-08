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
	attr_accessor :color

	def initialize(brand, color, cymbal)
		puts "Initializing drum set..."
		@brand = brand
		@cymbals = cymbal
		@color = color
	end

	def kick_drum(num)
		num.times do
			puts "Kick!"
		end
	end

	def sound(brand)
		puts "This #{@brand} drum set sounds amazing!"
	end

	def crash(num)
		num.times do
			puts "*CRASH!!*"
		end
	end

	def cymbal
		@cymbal = cymbal.rand(2..25)
	end
end


brands = ["Rogers", "Slingerland", "Drum Workshop", "Tama", "Ludwig"]
colors = ["Black diamond pearl", "Champagne sparkle", "Silver sparkle", "Red sparkle", "Black"]
cymbal = ["Crash", "Ride", "Splash", "China type", "Ice bell"]





drum_sets = []

4.times do |x|
	drum_sets << Drum_set.new(brands.sample, colors.sample, cymbal.sample)
	p drum_sets[x].sound(@brand)
	p drum_sets[x].kick_drum(rand(5..8))
	p drum_sets[x].crash(rand(3..6))
	p drum_sets
end

#puts "The drum set has #{cymbals} cymbals."

#p drum_sets