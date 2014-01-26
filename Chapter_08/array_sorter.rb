# Program to sort an array of user input

array = []

while true
	entry = gets.chomp
	if entry.length >  0
		array.push entry
	else
		break
	end
end

puts array.sort