#def number_comparison(my_ticket, winning_ticket)
#	my_ticket = my_ticket.split('')
#	puts "my ticket is #{my_ticket}"
#	winning_ticket = winning_ticket.split('')
#	puts "winning ticket is #{winning_ticket}"
#	matching_number = 0
#	winning_ticket.each_with_index do |num, index|
#		puts "number is #{num} and index is #{index}"
#		if num == my_ticket[index]
#			matching_number += 1
#		end
#		puts "matching_number is #{matching_number}"
#	end
#	matching_number
#end


def number_comparison(my_ticket, winning_ticket)
	my_ticket = my_ticket.split('')
	puts "My ticket is #{my_ticket}."
	winning_ticket = winning_ticket.split('')
	puts "Winning ticket is #{winning_ticket}." 
	matching_number = 4
	winning_ticket.each_with_index do |num, index|
		if num == my_ticket[index]
			matching_number -= 1
		end
	end
	matching_number
	#match_possibility = 4
	#match_possibility -= matching_number
	#match_possibility
end

def multiple_comparison(my_tickets, winning_tickets)
	arr = []
	my_tickets = my_tickets.each_slice(1).to_a 
		puts "My tickets are #{my_tickets}."
	winning_tickets = winning_tickets.each_slice(1).to_a
		puts "Winning ticket is #{winning_tickets}." 
	matching_numbers = 0
	winning_tickets.each_with_index do |num, index|
		if num == my_tickets[index]
			matching_numbers += 1
		end
	end
	matching_numbers
	match_possibilities = 4
	match_possibilities -= matching_numbers
	if match_possibilities == 1
		puts my_tickets[index]
	end
	match_possibilities 
	arr << match_possibilities
	arr
	#match_possibilities.each_with_index do |num, index|
	#	if num == 1[index]
	#		puts my_tickets.to_a
	#	end
	#match_possibilities
	#end
	#match_possibilities = empty_arr
end