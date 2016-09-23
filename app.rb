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
	messages << {:message_id => messages.length ,:user_id => id, :message => message }
	json true
end

get '/distance' do
	distances = []
	users.combination(2).to_a.each do |u1,u2|
		distances[]
	end
end