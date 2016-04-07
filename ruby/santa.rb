class Santa

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

  def gender
  	@gender
  end

  def ethnicity
  	@ethnicity
  end

  def celebrate_birthday(age)
  	@age = @age +1
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



santas = []
santas << Santa.new("male", "white")
santas << Santa.new("female", "latino")
santas << Santa.new("male", "russian")
santas << Santa.new("male", "latvian")

santa = Santa.new("male", "sami")
santa.get_mad_at("rudolph")
santa.celebrate_birthday
p santa


santas.each do |people|
  people.speak("hello")
  people.eat_milk_and_cookies("chocalate chip")
end

