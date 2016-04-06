class Santa

	def initialize
		puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
  	puts "That was a good #{cookie} cookie!"
  end
end

fred_claus = Santa.new
fred_claus.speak
fred_claus.eat_milk_and_cookies("oatmeal raisin")

