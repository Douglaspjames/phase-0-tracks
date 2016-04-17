#In the file, define a Genie class that can be initialized with a name and an age for the genie (so someone could create an instance named Bob who is 3298 years old, 
#then create an instance named Youssef who is 2716 years old). Add the appropriate driver code to test your work.

class Genie

    attr_reader :age
	attr_accessor :name

	def initialize(name, age)
		@name = name
		@age = age
	end

	def appear(genie)
		puts "*POOF!* I am #{genie}, and you have three wishes!"
	end
end

genies = []
bob = Genie.new("Bob", 3298)
genies << bob
youssef = Genie.new("Youssef", 2716)
genies << youssef
p genies

#Add an instance method to your class, appear, that prints *POOF!* I am <your genie's name here>, 
#and you have three wishes! Add the appropriate driver code to test your work.