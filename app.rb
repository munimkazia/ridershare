require 'sinatra'
require 'redis'
require 'sinatra/json'
require 'geo-distance'


users = []
messages = []

get '/' do
	'Hello world!'
end

get '/users' do
	json users
end

get '/messages' do
	json messages
end

post '/message' do
	id = params[:id]
	message = params[:message]
	messages << {:id => id, :message => message }
	json true
end

get '/distance' do
	distances = []
	json users.combination(2).to_a
end