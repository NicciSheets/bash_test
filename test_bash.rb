require "minitest/autorun"
require_relative "bash.rb"

class TestTddBash < Minitest::Test

	def test_assert_1_match_returns_1
		assert_equal(1, number_comparison("1111", "1222"))		
	end	

	def test_assert_2_matches_returns_2
		assert_equal(2, number_comparison("1111", "1122"))
	end

end

