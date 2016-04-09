# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(happy_words)
#   	happy_words + ":):):);)"
#   end


module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(happy_words)
  	happy_words + ":):):);)"
  end
end

class Teenager
	include Shout
end

class Lunatic
	include Shout
end

teenager = Teenager.new
words = "I'm a teenager and I like to shout angrily"
teenager.yell_angrily(words)
pleasant_words = "I'm a teenager and I like to shout happily"
teenager.yelling_happily(pleasant_words)

lunatic = Lunatic.new
lunatic_words = "I'm a lunatic and I like to shout angrily"
lunatic.yell_angrily(lunatic_words)
pleasant_lunatic_words = "I'm a lunatic and I like to yell happily"
lunatic.yelling_happily(pleasant_lunatic_words)


#yell_angrily("Oh noooooo")
#yelling_happily("Hip hip hurray!")

