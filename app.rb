# ======= requires =======
require "sinatra"
require "sinatra/reloader"
require 'sinatra/activerecord'
require './models'
# ======= database =======
# set :database, {adapter: "sqlite3", database: "business.db"}
set :database, "sqlite3:business.db"  # sets the db name (will be created if it does not exist)
# ======= website load =======
get '/' do
	puts "\n******* home *******"
	erb :home
end

# ======= home =======
get '/home' do
	puts "\n******* home *******"
	erb :home
end

# ======= gallery =======
get '/gallery' do
	puts "\n******* gallery *******"
	erb :gallery
end

# ======= contact =======
get '/contact' do
	puts "\n******* contact *******"
	erb :contact
end

# ======= profile =======
get '/profile' do
	puts "\n******* profile *******"
	erb :profile
end

# ======= get register =======
get '/register' do
	puts "\n******* register *******"
	erb :register
end
# ======= action register =======
post '/register' do
  puts "\n****** register *******"
  puts "params: #{params.inspect}"
  # @user = User.find(1)
  # puts "user: #{@user}"
  User.create(
  username: params[:username],
  password: params[:password],
  firstname: params[:firstname],
  lastname: params[:lastname],
  email: params[:email],
  usertype: params[:usertype],
  )

  # @user = User.order("created_at").last
  redirect '/home'
end

post '/sign-in' do
  puts "\n******* sign-in ******"
  puts "params: #{params.inspect}"
end
