require "sinatra"
require_relative "tic_tac_toe.rb"

get '/' do
	winner_result = " "
	erb :home
end

post '/board' do 
	grid1 = params[:grid1]
	grid2 = params[:grid2]
	grid3 = params[:grid3]
	grid4 = params[:grid4]
	grid5 = params[:grid5]
	grid6 = params[:grid6]
	grid7 = params[:grid7]
	grid8 = params[:grid8]
	grid9 = params[:grid9]
	puts grid1, grid2, grid3, grid4, grid5, grid6, grid7, grid8, grid9
	redirect '/play?grid1=' + grid1 + '&grid2=' + grid2 + '&grid3=' + grid3 + '&grid4=' + grid4 + '&grid5=' + grid5 + '&grid6=' + grid6 + '&grid7=' + grid7 + '&grid8=' + grid8 + '&grid9=' + grid9
end

get '/play' do
	computer = " "
	winner_result = " "
	grid1 = params[:grid1]
	grid2 = params[:grid2]
	grid3 = params[:grid3]
	grid4 = params[:grid4]
	grid5 = params[:grid5]
	grid6 = params[:grid6]
	grid7 = params[:grid7]
	grid8 = params[:grid8]
	grid9 = params[:grid9]
	print grid1, grid2, grid3, grid4, grid5, grid6, grid7, grid8
	computer = play_random(grid1,grid2,grid3,grid4,grid5,grid6,grid7,grid8,grid9)
	winner_result = winners(grid1.upcase,grid2.upcase,grid3.upcase,grid4.upcase,grid5.upcase,grid6.upcase,grid7.upcase,grid8.upcase,grid9.upcase)
	if computer == "grid1"
			grid1 = "O"
		elsif computer == "grid2"
			grid2 = "O"
		elsif computer == "grid3"
			grid3 = "O"
		elsif computer == "grid4"
			grid4 = "O"
		elsif computer == "grid5"
			grid5 = "O"
		elsif computer == "grid6"
			grid6 = "O"
		elsif computer == "grid7"
			grid7 = "O"
		elsif computer == "grid8"
			grid8 = "O"
		elsif computer == "grid9"
			grid9 = "O"
		end
	erb :play, :locals => {:grid1 => grid1, :grid2 => grid2, :grid3 => grid3, :grid4 => grid4, :grid5 => grid5, :grid6 => grid6, :grid7 => grid7, :grid8 => grid8, :grid9 => grid9, :computer => computer, :winner_result => winner_result}
end

