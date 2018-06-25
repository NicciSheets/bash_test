require "minitest/autorun"
require_relative "bash.rb"

class TestTddBash < Minitest::Test

	def test_assert_1_match_returns_1
	assert_equal(1, number_comparison("1111", "1222"))		
	end	
end
