require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    @name= params[:name]
    erb :index
  end

  get '/choice' do
  	erb :choice
  end

  get '/outcome' do
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
