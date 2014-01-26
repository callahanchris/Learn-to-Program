# Grandma is hard of hearing, you have to use all caps to talk to her!

puts 'HELLO DEAR!'

while true
	say = gets.chomp
	if say != say.upcase
		puts 'HUH?! SPEAK UP, SONNY!'
	elsif say == 'BYE'
		break
	else
		puts 'NO, NOT SINCE ' + (rand(21)+1930).to_s + '!'
	end
end

puts 'GOODBYE DEAR!'