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

get '/cat' do
    erb(:index)
end
