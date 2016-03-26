puts "How many employees will be processed today?"
Number_of_employees = gets.chomp.to_i
surveys = 1
while surveys <= number_of_employees
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?(Y/N)"
garlic_bread = gets.chomp == "Y" ? true : false
puts "Would you like to enroll in the company's health insurance?(Y/N)"
health_insurance = gets.chomp == "Y" ? true : false

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

  if age == (2016 - year) && (garlic_bread == "Y" && health_insurance == "Y") && (name == "Drake Cula" || "Tu Fang")
      puts "Definitely a vampire"
  elsif age != (2016 - year) && (garlic_bread == "N" && health_insurance == "N")
  	puts "Almost certainly a vampire!"
  elsif age != (2016 - year) && (garlic_bread == "N" || health_insurance == "N")
  	puts "Probably a vampire!"
  elsif age == (2016 - year) && (name != "Drake Cula" || "Tu Fang") && (garlic_bread == "Y" || health_insurance == "Y")
      puts "Probably not a vampire."
  else
      puts "Results inconclusive"
  end


puts "Your name is #{name}"
puts "You're #{age} years old"
puts "#{garlic_bread ? 'You would like garlic bread' : 'You wouldn\'t like garlic bread'}"
puts "#{health_insurance ? 'You would like to enroll in health insurance' : 'You don\'t want to enroll in health insurance'}"

surveys +=1

end