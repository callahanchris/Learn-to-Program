# Program to print the leap years between two years input by user

puts 'Please enter a start year and an end year.'

start_year = 1
end_year = 0

while start_year > end_year
	puts 'Start year: '
	start_year = gets.chomp.to_i
	puts 'End year: '
	end_year = gets.chomp.to_i
end

puts ''
puts 'The leap years between these years are: '

if start_year % 4 == 0 && (start_year % 100 != 0 || start_year % 400 == 0)
	p_year = start_year
else
	if (start_year + 4 - (start_year % 4))  % 100 != 0  || (start_year + (start_year % 4)) % 400 == 0
		p_year = start_year + 4 - (start_year % 4)
	else
		p_year = start_year + 4 - (start_year % 4) + 4
	end
end

while p_year <=  end_year
	if p_year % 4 == 0 && (p_year % 100 != 0 || p_year % 400 == 0)
		puts p_year.to_s
	end
	p_year += 4
end