#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
	erb :about
end

post '/visit' do
	@name = params[:name]
	@phone = params[:phone]
	@datetime = params[:datetime]
	@barber = params[:barber]


	# @message = "Dear #{@name}, we are glad that You are with us"

	f = File.open "./public/user.txt", "a"
	f.write "User: #{@name} Phone: #{@phone} Data and time: #{@datetime} Your barber will be: #{@barber} "

	erb :visit


end

get '/visit' do
	erb :visit
end

post '/contacts' do
	@email = params[:email]
	@message = params[:message]

	# @message = "Dear #{@name}, we are glad that You are with us"

	f = File.open "./public/contacts.txt", "a"
	f.write "Mail: #{@email} Message: #{@message} "

	erb :contacts


end

get '/contacts' do
	erb :contacts
end