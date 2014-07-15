require 'sinatra'
require 'sinatra/activerecord'
set :database, "sqlite3:daba.sqlite3"
require './models'
get '/' do
	# User.create()
	# "A user was created"
	redirect '/sign-up'
end
get '/sign-up' do
	erb :sign_up
end
post '/sign-up-process' do
	params[:lname]
	params[:fname]
	User.create(lname:"#{params[:lname]}",fname:"#{params[:fname]}")
	"#{params[:lname]},#{params[:fname]}"
end