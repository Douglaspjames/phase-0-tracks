
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
- Release 4
decrypt take the value of encrypt as the arguement. 
=end


def encrypt(x)
    index=0
    alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    convert = ''
    while index < x.length
        letter = x[index]
        if letter == "z"
            convert << "a"
            index+=1
        elsif letter == " "
            convert << " "
            index+=1
        else
            letter = alphabet[letter].next!
            index+=1
            convert << letter
        end
    end
    convert
end

def decrypt(x)
    number = 0
    deconvert = ""
    alphabet = "abcdefghijklmnopqrstuvwxyzBCDEFGHIJKLMNOPQRSTUVWXYZ"
    while number < x.length
        green = x[number]
        if green == " "
            deconvert << " "
            number +=1
        elsif green == "z"
            deconvert << "a"
            number +=1
        else
        red = alphabet.index(green)
        red = red.to_i
        blue = red-1
        yellow = alphabet[blue]
        deconvert << yellow
        number += 1
        end
    end
    deconvert 
end

decrypt(encrypt("I think we got it"))

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

