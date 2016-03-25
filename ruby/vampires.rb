puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?(Y/N)"
garlic_bread = gets.chomp 
puts "Would you like to enroll in the company's health insurance?(Y/N)"
health_insurance = gets.chomp == "Y" ? true : false

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

if age == (2016 - year) && (garlic_bread == "Y" || health_insurance == "Y")
	puts "Probably not a vampire."
elsif
	puts "Probably a vampire!"
end

#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”

if age != (2016 - year) && (garlic_bread == "N" && health_insurance == "N")
	puts "Almost certainly a vampire!"
else
	puts ""
end

If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
Otherwise, print “Results inconclusive.”