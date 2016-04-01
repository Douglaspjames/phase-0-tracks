  puts "How many employees will be processed today?"
number_of_employees = gets.chomp.to_i
surveys = 1
sunshine_allergy = true
while surveys <= number_of_employees
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
  puts "Name any allergies one at a time. Type done when finished"
  loop do
  allergies = gets.chomp
   if allergies == 'done'
   break
   end
   if allergies == "sunshine"
   sunshine_allergy = false
   break
   end
  end

    if sunshine_allergy == false
      puts "Probably a vampire"
    elsif age == (2016 - year) && (garlic_bread == "Y" && health_insurance == "Y") && (name == "Drake Cula" || name == "Tu Fang")
        puts "Definitely a vampire"
    elsif age != (2016 - year) && (garlic_bread == "N" && health_insurance == "N")
    	puts "Almost certainly a vampire!"
    elsif age != (2016 - year) && (garlic_bread == "N" || health_insurance == "N")
    	puts "Probably a vampire!"
    elsif age == (2016 - year) && (name != "Drake Cula" || name != "Tu Fang") && (garlic_bread == "Y" || health_insurance == "Y")
        puts "Probably not a vampire."
    else
        puts "Results inconclusive"
    end

  puts "Your name is #{name}"
  puts "You're #{age} years old"
    if garlic_bread == "Y"
    	puts "You would like garlic bread"
    else 
    	puts "You wouldn't like garlic bread"
    end
    if health_insurance == "Y"
    	puts "You would like to enroll in health insurance"
    else
    	puts "You don't want to enroll in health insurance"
    end

  surveys +=1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."