# Program to print out the "modern" Roman numeral version of a user-input number
# I = 1, IV = 4, V = 5, IX = 9, X = 10, XL = 40, L = 50, 
# XC = 90, C = 100, CD = 400, D = 500, CM = 900, M = 1000

def roman_numeral num
	
	if num >= 1000
		thousands = 'M' * (num / 1000)
	end

	if num >= 100
		temp_hundreds = (num % 1000) / 100
		if temp_hundreds == 9
			hundreds = 'CM'
		elsif (temp_hundreds < 9 && temp_hundreds > 5)
			hundreds = 'D' + 'C' * (temp_hundreds - 5)
		elsif temp_hundreds == 5
			hundreds = 'D'
		elsif temp_hundreds == 4
			hundreds = 'CD'
		else
			hundreds = 'C' * temp_hundreds
		end
	end
	
	if num >= 10
		temp_tens = (num % 100) / 10
		if temp_tens == 9
			tens = 'XC'
		elsif (temp_tens < 9 && temp_tens > 5)
			tens = 'L' + 'X' * (temp_tens - 5)
		elsif temp_tens == 5
			tens = 'L'
		elsif
			temp_tens == 4
			tens = 'XL'
		else
			tens = 'X' * temp_tens
		end
	end
	
	if num > 0
		temp_ones = num % 10
		if temp_ones == 9
			ones = 'IX'
		elsif (temp_ones < 9 && temp_ones > 5)
			ones = 'V' + 'I' * (temp_ones - 5)
		elsif temp_ones == 5
			ones = 'V'
		elsif temp_ones == 4
			ones = 'IV'
		else
			ones = 'I' * temp_ones
		end
	end
	
	puts "#{num} in \"Modern\" Roman numerals is "+"#{thousands}"+"#{hundreds}"+"#{tens}"+"#{ones}"
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

roman_numeral num