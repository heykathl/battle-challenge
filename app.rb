require 'sinatra'
require "sinatra/reloader" if development? 

get '/' do
    "hello!"
end

get '/secret' do
    "Shh secret"
end

get '/new' do
    "NEW PAGE"
end

get '/random-cat' do
    @name = ["Amigo", "Misty", "Almond"].sample
    erb(:index)
end

get '/cat-form' do
    erb(:cat_form)
end

get '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
end



