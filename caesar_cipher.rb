def caesar_cipher(word, shift_factor=0)
	string_array = word.split("")
	num = []
	for letter in string_array
		num_letter = letter.ord

		if num_letter.between?(32, 64)
			num.push(num_letter.chr)
			next
		end
		if letter == letter.upcase
			num_letter -= 'A'.ord
			shifted = (num_letter + shift_factor) % 26 + 'A'.ord
			num.push(shifted.chr)
		else
			num_letter -= 'a'.ord
			shifted = (num_letter + shift_factor) % 26 + 'a'.ord
			num.push(shifted.chr)
		end
	end
	new_str = num.join("")
	return new_str
end

puts caesar_cipher("What a string!", 5)

