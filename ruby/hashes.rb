#ask designer/user for data regarding a specific client
#convert input to proper data type
#use symbols for keys
#create a hash and print it out when designer/user is done with all questions
#ask user if they'd like to update any keys
#if they say "none" skip it
#if they update any keys update the info in the hash
#print hash
#exit program

puts "Client name?"
name = gets.chomp
puts "Age?"
age = gets.chomp.to_i
puts "Number of children?"
kids = gets.chomp.to_i
puts "Decor theme?"
theme = gets.chomp
puts "Do they want an open concept?(Y/N)"
concept = gets.chomp

client = {name: name, age: age, number_of_children: kids, decor_theme: theme, open_concept: concept}
puts
puts
puts "Client name is #{client[:name]}"
puts "Client age is #{client[:age]}"
puts "Client number of children is #{client[:number_of_children]}"
puts "Client decor theme is #{client[:decor_theme]}"
puts "Open concept: #{client[:open_concept]}"

puts "What information would you like to update?"
update = gets.chomp

   if update == "none"
   	puts "Thank you"



