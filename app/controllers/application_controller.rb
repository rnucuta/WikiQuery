require './config/environment'
require './app/models/model'
require 'wikipedia'
require 'spellchecker'

class ApplicationController < Sinatra::Base

# this helps connect our public and views directories
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
    erb :index
  end
  
  post '/results' do
    @page1 = Wikipedia.find(params[:query].downcase)
  
    erb :results
  end
  
  # post '/index' do
    
  #   erb :index
  # end
end
