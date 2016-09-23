require 'sinatra'
require 'sinatra/json'
# require 'geo-distance'


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

post '/autoupdate' do
	id = params[:id]
	x = params[:x]
	y = params[:y]
	old = false
	users.each do |u|
		if u[:id] == id then
			old = true
			u[:x] = x
			u[:y] = y
			break	
		end	
	end
	users << {:id => id, :x => x, :y => y } if old == false
	json true
end

get '/distance' do
	distances = []
	users.combination(2).to_a.each do |u1,u2|
		distances[]
	end
end