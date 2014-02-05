# Program to print out the "old-school" Roman numeral version of a user-input number
# I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000

def old_roman_numeral num
	
	if num >= 1000
		thousands = 'M' * (num / 1000)
	end

	if num >= 100
		temp_hundreds = (num % 1000) / 100
		if temp_hundreds > 5
			hundreds = 'D' + 'C' * (temp_hundreds - 5)
		elsif temp_hundreds == 5
			hundreds = 'D'
		else
			hundreds = 'C' * temp_hundreds
		end
	end
	
	if num >= 10
		temp_tens = (num % 100) / 10
		if temp_tens > 5
			tens = 'L' + 'X' * (temp_tens - 5)
		elsif temp_tens == 5
			tens = 'L'
		else
			tens = 'X' * temp_tens
		end
	end
	
	if num > 0
		temp_ones = num % 10
		if temp_ones > 5
			ones = 'V' + 'I' * (temp_ones - 5)
		elsif temp_ones == 5
			ones = 'V'
		else
			ones = 'I' * temp_ones
		end
	end
	
	puts "#{num} in Roman numerals is "+"#{thousands}"+"#{hundreds}"+"#{tens}"+"#{ones}"
end

puts 'Enter a number: '
while true
	num = gets.chomp.to_i
	if (num > 0 && num < 3000)
		break
	else
		puts 'Please enter a positive integer less than 3000: '
	end
end

old_roman_numeral num