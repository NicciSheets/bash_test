require "minitest/autorun"
require_relative "bash.rb"

class TestTddBash < Minitest::Test

	def test_assert_1_match_returns_1
		assert_equal(1, number_comparison("1222", "1111"))		
	end	

	def test_assert_2_matches_returns_2
		assert_equal(2, number_comparison("1122", "1111"))
	end

	def test_assert_1_away_from_winner_returns_1_off
		assert_equal("You are one off!", number_comparison("1222", "1111"))
	end
	
	#def test_assert_end_result_is_array
	#	my_tickets = ["1111", "1112", "1122"]
	#	winning_tickets = ["1234", "2222"]
	#	assert_equal(Array, end_result(my_tickets, winning_tickets).class)
	#end


end




