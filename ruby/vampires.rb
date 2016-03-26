puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?(Y/N)"
garlic_bread = gets.chomp 
puts "Would you like to enroll in the company's health insurance?(Y/N)"
health_insurance = gets.chomp 

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

if age == (2016 - year) && (garlic_bread == "Y" || health_insurance == "Y")
	puts "Probably not a vampire."
elsif age n!= (2016 - year) && (garlic bread == "N" || health_insurance == "N")
	puts "Probably a vampire!"
elsif age != (2016 - year) && (garlic_bread == "N" && health_insurance == "N")
	puts "Almost certainly a vampire!"
elsif name == "Drake Cula" || "Tu Fang"
    puts "Definitely a vampire"
else
    puts "Results inconclusive"
end