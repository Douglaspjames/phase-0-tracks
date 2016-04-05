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

index = 0
loop do 
puts "please enter your calculation"
calc = gets.chomp
totals = [calc]
  if calc == "done"
  	puts "thank you"
  	break
  else
  #calc = gets.chomp
  calc = calc.split(' ')
  calc[0] = calc[0].to_i
  calc[2] = calc[2].to_i
  p calculate(calc[0], calc[1], calc[2])
  totals = [calculate(calc[0], calc[1], calc[2])]
  list_totals = totals + []
  index +=1
  end
  #list_totals = totals
end
puts "#{index} calculations performed"

#p list_totals







