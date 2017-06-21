# ======= requires =======
require "sinatra"
require 'sinatra/activerecord'
require "sinatra/reloader"
# ======= database =======
# set :database, "sqlite3:portfolio.db"  # sets the db name (will be created if it does not exist)
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

# ======= about =======
get '/about' do
	puts "\n******* about *******"
	erb :about
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
