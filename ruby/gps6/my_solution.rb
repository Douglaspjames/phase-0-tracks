# Virus Predictor

# I worked on this challenge  with: Becky Lambert.
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative complements the builtin method require by allowing you to 
#load a file that is relative to the file containing the require_relative statement.
#
require_relative 'state_data'

class VirusPredictor

#initialized an instance and hold attributes you want to use in other methods.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#calls the 2 methods "predicted_deaths" & "speed of spread" & passing through arguments

 # Consider the scope of instance variables to determine what could be refactored. Once you 
 #figure out what the issue is, you'll need to edit the predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #If you move private above virus_effects the method doesn't work! To call private methode you need to be 
  #within the scope of the project. It makes it safer so that methods that you do not want to be interacted with by the user interface 
  #are hidden.

#takes the population density and population and state and predicts a number of deaths
  def predicted_deaths
    #predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#I worked on this A LONG TIME! but could not figure out how to write an algorithym that 
#refactors the code in "predicted_deaths" and "speed_of_spread"

#takes population density and state and predicts the speed of the spread of the virus.
  def speed_of_spread
   #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, data_hash|
  VirusPredictor.new(state, data_hash[:population_density], data_hash[:population]).virus_effects
end




#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The hash rocket seperates keys from values. If you have symbols for your keys you can use a :

# What does require_relative do? How is it different from require?
#require_relative complements the builtin method require by allowing you to 
#load a file that is relative to the file containing the require_relative statement.
#It's different from require because with require you can provide an address of a file in a different directory.

# What are some ways to iterate through a hash?
#.each, .map, .map!

# When refactoring virus_effects, what stood out to you about the variables, if anything?
#They were redundant and not needed. The program worked without them because all of the data is provided when a new instance of the 
#class in initialized.

# What concept did you most solidify in this challenge?
#Private methods and the scope of instance variables.


