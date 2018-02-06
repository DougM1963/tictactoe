require "sinatra"
require_relative "tictactoe.rb"
enable :sessions

get '/' do
	erb :home
end