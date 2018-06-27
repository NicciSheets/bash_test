my_tickets = ["1113", "1114"]
winning_tickets = ["1112"]

my_tickets_array = my_tickets.each_slice(1).to_a
return my_tickets_array
my_tickets_array_of_array = my_tickets_array.each_slice(1).to_a
puts my_tickets_array_of_array