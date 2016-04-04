Take a spys real name and replace it with a fake one

split name string in half, reverse first and last names

change all vowels in name to next vowel in aeiou

change all consonants to next consonant


def name_reverse(x)
	name = (x).split('').reverse.map! { |letter| letter.next }
end
	
	
name_reverse("Doug James")



next_vowel method


	
