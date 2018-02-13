require "sinatra"
require_relative "tic_tac_toe.rb"

get '/' do
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
	grid1 = params[:grid1]
	grid2 = params[:grid2]
	grid3 = params[:grid3]
	grid4 = params[:grid4]
	grid5 = params[:grid5]
	grid6 = params[:grid6]
	grid7 = params[:grid7]
	grid8 = params[:grid8]
	grid9 = params[:grid9]
	erb :play, :locals => {:grid1 => grid1, :grid2 => grid2, :grid3 => grid3, :grid4 => grid4, :grid5 => grid5, :grid6 => grid6, :grid7 => grid7, :grid8 => grid8, :grid9 => grid9}
end


