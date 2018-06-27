require "minitest/autorun"
require_relative "bash.rb"

class TestTddBash < Minitest::Test

#	def test_assert_1_match_returns_1
#		assert_equal(1, number_comparison("1222", "1111"))		
#	end	

#	def test_assert_2_matches_returns_2
#		assert_equal(2, number_comparison("1122", "1111"))
#	end

	def test_assert_1_away_from_winner_returns_1_off
		assert_equal(2, number_comparison("2211", "1111"))
		assert_equal(1, number_comparison("1112", "1111"))
		assert_equal(4, number_comparison("1324", "4231"))
	end

	# def test_assert_multiple_comparisons_returns_as_array
	# 	my_tickets = ["1113", "1114"]
	# 	winning_tickets = ["1112"]
	# 	assert_equal(Array, check_for_match_arr(my_tickets, winning_tickets).class)
	# end

	def test_assert_multiple_comparisons_returns_as_array_of_one_offs
	 	assert_equal(["1113", "1114"], check_for_match_arr(["1113", "6666", "1114"], "1112"))
	end

	 def test_assert_multiple_winners_returned
	 	assert_equal([2, 0], winarr(["1234", "1234", "1244", "1255"],["1234", "1299"]))
	 end
end




