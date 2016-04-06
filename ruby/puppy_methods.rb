class Puppy

  # Release 1: Declare an initialize method
  def initialize
    puts "Initializing new Puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times do
      puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_years = human_years * 7
    puts dog_years
  end

  def play_dead
    puts "Is he dead?"
    puts "No, he's just playing dead!"
  end

end


# Release 2: Write your own class and experiment
class Kitten

  def initialize
    puts "Welcome new kitty!"
  end
 
  def purr(num)
    num.times do
      puts "Purr!"
    end
  end

  def play_with_string
    puts "I'm playing with string!"
  end

end


# Driver code
fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over
fido.dog_years(8)
fido.play_dead


kittens = []

50.times do
  kittens << Kitten.new
end

kittens.each do |kitten|
  kitten.purr(3)
  kitten.play_with_string
end