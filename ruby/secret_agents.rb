=begin
- Encrypt
write a method
call it encrypt
index = 0 at the top
write a while loop to go through every letter of string
advance each letter by one
print string
- Decrypt
write a method
call it Decrypt
index = 0
write a while loop to go through every letter of string
decrease each letter by one
print string
- Interface
ask user whether they would like encyrpt or decrpyt a password
ask for password
run encrypt or decrpyt method
print results to screen
exit
=end


def encrypt(x)
    index=0
    alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    while index < x.length
        letter = x[index]
        if letter == "z"
            print "a"
            index+=1
        elsif letter == " "
            print " "
            index+=1
        else
            letter = alphabet[letter].next!
            index+=1
            print letter
        end
    end
end

def decrypt(x)
    number = 0
    alphabet = "abcdefghijklmnopqrstuvwxyzBCDEFGHIJKLMNOPQRSTUVWXYZ"
    while number < x.length
        green = x[number]
        if green == " "
            print " "
            number +=1
        elsif green == "z"
            print "a"
            number +=1
        else
        red = alphabet.index(green)
        red = red.to_i
        blue = red-1
        yellow = alphabet[blue]
        print yellow
        number += 1
        end
    end
end

puts "What's your password?"
password = gets.chomp
puts "Would you like to encrypt or decrypt your password?"
security = gets.chomp
if security == "encrypt"
	puts encrypt(password)
elsif security == "decrypt"
	puts decrypt(password)
else
	puts "I didn't understand that."
end
print "Thanks. Goodbye."

#We could not get the nested method to work :(