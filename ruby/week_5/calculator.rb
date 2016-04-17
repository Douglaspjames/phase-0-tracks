def calculate(x,y,z)
	if y == '+'
		x + z
    elsif y == '-'
    	x - z
    elsif y == '*'
    	x * z
    elsif y == '/'
    	x / z
    else
    	puts "try again"
    end
end

#calculate(4, '+', 5)
#calculate(4, '-', 5)
#calculate(4, '*', 5)
#calculate(20, '/', 5)

totals = {}

loop do 
puts "please enter your calculation (Type 'done' to exit)"
data = gets.chomp
  if data == "done"
  	puts "thank you"
  	break
  else
  #calc = gets.chomp
  calc = data.split(' ')
  calc[0] = calc[0].to_i
  calc[2] = calc[2].to_i
  answer = calculate(calc[0], calc[1], calc[2])
  totals[data] = answer
  puts answer
  end
  #list_totals = totals
end
#puts "#{index} calculations performed"

#p list_totals







