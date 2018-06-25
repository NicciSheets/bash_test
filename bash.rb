def number_comparison(my_ticket, winning_ticket)
	my_ticket = my_ticket.split('')
	winning_ticket = winning_ticket.split('')
	matching_number = 0
	winning_ticket.each_with_index do |num, index|
		if num == my_ticket[index]
			matching_number += 1
		end
	end
	matching_number
end




