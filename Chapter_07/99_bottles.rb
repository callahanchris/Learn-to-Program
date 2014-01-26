# Program to print the full song "99 Bottles of Beer on the Wall"

bottles = 99

while bottles > 2
	puts bottles.to_s + ' bottles of beer on the wall,'
	puts bottles.to_s + ' bottles of beer,'
	puts 'Take one down, pass it around,'
	bottles -= 1
	puts bottles.to_s + ' bottles of beer on the wall!'
	puts ''
end

while bottles > 0
	if bottles == 2
		puts bottles.to_s + ' bottles of beer on the wall,'
		puts bottles.to_s + ' bottles of beer,'
		puts 'Take one down, pass it around,'
		bottles -= 1
		puts bottles.to_s + ' bottle of beer on the wall!'
		puts ''
	else
		puts bottles.to_s + ' bottle of beer on the wall,'
		puts bottles.to_s + ' bottle of beer,'
		puts 'Take one down, pass it around,'
		bottles -= 1
		puts bottles.to_s + ' bottles of beer on the wall!'
		puts ''
	end
end
