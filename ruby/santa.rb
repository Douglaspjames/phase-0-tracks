class Santa
	attr_reader :gender, :ethnicity, 
	attr_accessor :age

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
  end

  def speak(words)
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
  	puts "That was a good #{cookie} cookie!"
  end

  def celebrate_birthday
  	@age = @age +1
  end

  def get_mad_at(reindeer_name)
  	index = @reindeer_ranking.index(reindeer_name)
  	@reindeer_ranking.delete_at(index)
  	@reindeer_ranking.push(reindeer_name)
  	puts @reindeer_ranking
  end



  # def age
  # 	@age
  # end

  # def rank
  # 	@reindeer_ranking
  # end

  # def age_change=
  # 	@age = @age +1
  # end

end



# fred_claus = Santa.new
# fred_claus.speak
# fred_claus.eat_milk_and_cookies("oatmeal raisin")



# santas = []
# santas << Santa.new("male", "white")
# santas << Santa.new("female", "latino")
# santas << Santa.new("male", "russian")
# santas << Santa.new("male", "latvian")

santa = Santa.new("male", "sami")
santa.get_mad_at("Rudolph")
p santa.celebrate_birthday
p santa.gender
p santa.ethnicity


santas.each do |people|
  people.speak("hello")
  people.eat_milk_and_cookies("chocalate chip")
end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["Chukchi", "Sami", "white", "Japanese-African", "Inuit", "Mystical Creature (unicorn)", "N/A"]
#example_genders.length.times do |i|
  #santas << Santa.new(example_genders[i], example_ethnicities[i])

#Create multiple santas
#add random gender and ethnicity, random age between 0-140
#print details



santas = []

10.times do |x|
	santas << Santa.new(example_genders.sample, example_ethnicities.sample)
	santas[x].age = rand(0..140)
	p santas[x].age
	p santas[x].gender
	p santas[x].ethnicity
end


	#santas[9].gender


