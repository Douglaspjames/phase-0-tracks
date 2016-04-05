Take a spys real name and replace it with a fake one

split name string in half, reverse first and last names

change all vowels in name to next vowel in aeiou

change all consonants to next consonant


puts "What is your name?"

name = gets.chomp

  if name == "quit"
	puts "Thank you!"
  else
  	name = name.split('')
    reversed_name = name.reverse
  end 
    

    name.map! do |letter|
	puts letter
	letter.next
    end
  end 

    name_reverse(name)
  end

 #or


 ending=true
while ending == true
puts "What is your name?"

name=gets.chomp

  if name == "quit"
	puts "Thank you!"
    ending=false
	break
  else
  
    def name_reverse(x)
	    name = (x).split('').reverse.map! { |letter| letter.next }
    end 
    name_reverse(name)
    
  end
  
end



#if name = "quit"
	puts "Thank you"
#else

#end
#index +=1
	
	
#
while name != "quit"
	name_reverse(name)
	index +=1
end




	
