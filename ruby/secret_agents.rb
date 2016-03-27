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



def encrypt(x)
	index = 0
	while index < x.length
		letter = x[index]
		letter = letter.next
		index += 1
		print letter
	end
end

encrypt("Mike")

Decrypt
____________

alphabet = "abcdefghijklmnopqrstuvwxyz"
x = "b"
red = alphabet.index(x)
blue = red - 1
puts red
puts blue
yellow = alphabet[blue]
puts yellow

def decrypt(x)
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < x.length
		red = alphabet.index(x)
		blue = red - 1
		yellow = alphabet[blue]
		print yellow
		index += 1
	end
end

decrypt("bcde")

puts "What's your password?"
password = gets.chomp
puts "Would you like to encrypt or decrypt your password?"
security = gets.chomp
if security == "encrypt"
	encrypt("password")
elsif security == "decrypt"
	decrypt("password")
else
	puts "I didn't understand that."
end
puts "Thanks. Goodbye."