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
	p my_ticket
	my_ticket = my_ticket.split('')
	puts "My ticket is #{my_ticket}."
	winning_ticket = winning_ticket.split('')
	puts "Winning ticket is #{winning_ticket}." 
	matching_number = 4
	winning_ticket.each_with_index do |num, index|
		if num == my_ticket[index]
			p num
			num
			matching_number -= 1
		end
	end
	p matching_number
	#match_possibility = 4
	#match_possibility -= matching_number
	#match_possibility
end

def check_for_match_arr(my_ticket, winning_ticket)
	empty = []
	my_ticket.each do |num|
		if number_comparison(num, winning_ticket) == 1
			empty << num
			end
		end
	empty
end

def check_for_match_arr2(my_ticket, winning_ticket)
 	empty = []
 	my_ticket.each do |num|
 		empty << number_comparison(num, winning_ticket)
 	end
 	empty
 end


 def winarr(myticketarray, winningticket)
	warr = []
	losers = []
	winningticket.each do |ticket|
		matches = check_for_match_arr2(myticketarray, ticket)
		winners = 0
		matches.each_with_index do |n|
			if n == 0
				winners += 1
			else 
				losers << n
			end
		end
		warr << winners
	end
	losers = losers.sort
	warr = warr.sort
	new_array = []
	new_array << warr
	new_array << losers
	new_array
end



















			

# def multiple_comparison(my_tickets, winning_tickets)
# 	arr = []
# 	my_tickets = my_tickets.each_slice(1).to_a 
# 		puts "My tickets are #{my_tickets}."
# 	winning_tickets = winning_tickets.each_slice(1).to_a
# 		puts "Winning ticket is #{winning_tickets}." 
# 	matching_numbers = 4
# 	winning_tickets.each_with_index do |num, index|
# 		#puts "num #{num} and index #{index}"
# 		if num == my_tickets[index]
# 			matching_numbers -= 1
# 			if num == 1
# 				puts my_tickets[index]
# 			end
# 		end
# 	matching_numbers << num
# 	end
# 	matching_numbers = arr
# 	 p "this is arr #{arr}"
# end

	#match_possibilities.each_with_index do |num, index|
	#	if num == 1[index]
	#		puts my_tickets.to_a
	#	end
	#match_possibilities
	#end
	#match_possibilities = empty_arr
#end