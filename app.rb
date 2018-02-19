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
	redirect '/play?grid1=' + grid1.upcase + '&grid2=' + grid2.upcase + '&grid3=' + grid3.upcase + '&grid4=' + grid4.upcase + '&grid5=' + grid5.upcase + '&grid6=' + grid6.upcase + '&grid7=' + grid7.upcase + '&grid8=' + grid8.upcase + '&grid9=' + grid9.upcase
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
	if    grid1 == "O"
	      grid1 = "O"
	elsif grid1 == """"
		  grid1 = """"
	else grid1 = "X"
	end
	if grid2 == "O"
			grid2 = "O"
		elsif grid2 == """"
			grid2 = """"
		else grid2 = "X"
		end
	if grid3 == "O"
			grid3 = "O"
		elsif grid3 == """"
			grid3 = """"
		else grid3 = "X"
		end
	if grid4 == "O"
			grid4 = "O"
		elsif grid4 == ""
			grid4 = ""
		else grid4 = "X"
		end
	if grid5 == "O"
			grid5 = "O"
		elsif grid5 == ""
			grid5 = ""
		else grid5 = "X"
		end
	if grid6 == "O"
			grid6 = "O"
		elsif grid6 == ""
			grid6 = ""
		else grid6 = "X"
		end
	if grid7 == "O"
			grid7 = "O"
		elsif grid7 == ""
			grid7 = ""
		else grid7 = "X"
		end
	if grid8 == "O"
			grid8 = "O"
		elsif grid8 == ""
			grid8 = ""
		else grid8 = "X"
		end
	if grid9 == "O"
			grid9 = "O"
		elsif grid9 == ""
			grid9 = ""
		else grid9 = "X"
		end
	print grid1, grid2, grid3, grid4, grid5, grid6, grid7, grid8, grid9
	computer = play_random(grid1,grid2,grid3,grid4,grid5,grid6,grid7,grid8,grid9)
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
	winner_result = winners(grid1.upcase,grid2.upcase,grid3.upcase,grid4.upcase,grid5.upcase,grid6.upcase,grid7.upcase,grid8.upcase,grid9.upcase)	
	erb :play, :locals => {:grid1 => grid1, :grid2 => grid2, :grid3 => grid3, :grid4 => grid4, :grid5 => grid5, :grid6 => grid6, :grid7 => grid7, :grid8 => grid8, :grid9 => grid9, :computer => computer, :winner_result => winner_result}
end

