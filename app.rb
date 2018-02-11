require "sinatra"
require_relative "tic_tac_toe.rb"

get '/' do
	erb :home
end

# post '/board' do 
# 	board = [:board]
# 	redirect '/tictactoe?board=' + board
# end

# get '/board' do
# 	board = [:board]
# 	erb :tictactoe, :locals => {:board => board}
# end

