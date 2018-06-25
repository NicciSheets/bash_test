require "minitest/autorun"
require_relative "bash.rb"

class TestTddBash < Minitest::Test

	def test_assert_function_is_array
		assert_equal(Array, my_num().class)
	end

end
