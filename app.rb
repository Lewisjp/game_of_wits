require 'sinatra/base'
require './lib/ironthrone.rb'
require 'bundler'
Bundler.require

module Gameofthrones
  class App < Sinatra::Base

    get '/' do
	    erb :index
    end

    get '/study' do
    	@random = Ironthrone.new 
	    erb :cycle
    end

    get '/about' do
    	erb :about
    end

    get '/wits' do
    	@random = Ironthrone.new 
    	erb :question
    end

    post '/:form_type' do
       @results = Ironthrone.new.results(params) 
       erb :results
    end

    post '/results' do 
    end


  end
end