require "minitest/autorun"
require_relative "tic_tac_toe.rb"

class TestTicTacToe < Minitest::Test 

	def test_assert_that_1_equals_1
		assert_equal(1,1)
	end

	def test_assert_that_player1_equals_x
        player1 = "x"
		assert_equal("x",player1)
	end

	def test_assert_that_player2_equals_o
        player2 = "o"
		assert_equal("o",player2)
	end
end