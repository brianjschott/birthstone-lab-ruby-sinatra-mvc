require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    
    
    return erb :index
  end
  
  post '/results' do
    @month = params["birthMonth"]
    @birthstoneChoice = choose_gem(@month)
    return erb :results
  end 
end
