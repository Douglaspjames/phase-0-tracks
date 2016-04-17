#In the file, define a Genie class that can be initialized with a name and an age for the genie (so someone could create an instance named Bob who is 3298 years old, 
#then create an instance named Youssef who is 2716 years old). Add the appropriate driver code to test your work.

class Genie

    attr_reader :age
	attr_accessor :name

	def initialize(name, age)
		@name = name
		@age = age
		@submitted_wishes = []
	end

	def appear(genie)
		puts "*POOF!* I am #{genie}, and you have three wishes!"
	end

#instance method takes string
#3x add wish as granted wish to submitted_wishes, print Your wish of '<wish here>' has been granted! and print "true"
#after 3x add wish to submitted wishes as non granted wish print "Sorry, I've already granted three wishes today!"" and return false

	def grant_wish(wish_string)
		index = 0
		#index < 3 = true
		#index >= 3 =false
		if index < 3
			granted_wish = "Your wish of #{wish_string} has been granted!"
			p granted_wish
			#Puts "true"
		@submitted_wishes << granted_wish
		
		else index > 2
			ungranted_wish = "Sorry, I've already granted three wishes today!"
			p ungranted_wish
			#puts "false"
        @submitted_wishes << ungranted_wish
        index += 1
		end
		
	end

	def display_wish_history
		puts @submitted_wishes
	end
end

#In your driver code, use a data structure to declare a collection of five wish strings to test with 
#(if you're nervous and blanking out, even nonsense strings made by keyboard smushing will do), 
#then iterate through those wishes to test your genie and demonstrate that only three wishes are granted.

# genies = []
# bob = Genie.new("Bob", 3298)
# genies << bob
# youssef = Genie.new("Youssef", 2716)
# genies << youssef
# p genies

fred = Genie.new("Fred", 25)
#p fred.grant_wish

wishes = ["want pony", "want new car", "want world peace", "want omnipotence", "want money"]
wishes.each do |wish| 
fred.grant_wish(wish)
p fred.display_wish_history
end
	
#p @submitted_wishes

# 8
#Pseudocode an instance method (do NOT implement it -- you will not have to actually write this!) that 
#would examine all the individual words in the wish history and print the word that has the most vowels

#most_vowels instance method
#iterate through each word in wish history 
#compare to a string containing just vowels
#print each word and #of vowels in a hash
#sort the hash so that the highest number is last/first
#print last/first key value pair in hash




