require "minitest/autorun"
require_relative "bash.rb"

class TestTddBash < Minitest::Test

	def test_assert_1_match_returns_1
		assert_equal(1, number_comparison("1111", "1222"))		
	end	

	def test_assert_x_matches_returns_x
		assert_equal(2, number_comparison("1111", "1122"))
		assert_equal(3, number_comparison("1111", "1112"))
		assert_equal(4, number_comparison("1111", "1111"))
	end

	def test_assert_end_result_is_array
		my_tickets = ["1111", "1112", "1122"]
		winning_tickets = ["1234", "2222"]
		assert_equal(Array, end_result(my_tickets, winning_tickets).class)
	end

end




