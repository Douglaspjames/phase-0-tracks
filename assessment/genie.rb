#In the file, define a Genie class that can be initialized with a name and an age for the genie (so someone could create an instance named Bob who is 3298 years old, 
#then create an instance named Youssef who is 2716 years old). Add the appropriate driver code to test your work.

class Genie

    attr_reader :age
	attr_accessor :name

	def initialize(name, age)
		@name = name
		@age = age
	end
end

genies = []
genies << Genie.new("Bob", 3298)
genies << Genie.new("Youssef", 2716)
p genies

#puts "Your genie is named #{@name}, and he is #{@age} years old"