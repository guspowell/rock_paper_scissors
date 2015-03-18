require 'sinatra/base'

require_relative "lib/player.rb"
require_relative "lib/options.rb"
require_relative "lib/computer.rb"
require_relative "lib/outcome.rb"

class RPS < Sinatra::Base

  enable :sessions

  options = Options.new
  computer = Computer.new

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new
    player.name(params[:name])
    session[:player] = player
    session[:computer] = computer
    redirect to('/choice')
  end

  get '/choice' do
    erb :choice
  end

  get '/outcome' do
    player = session[:player]
    computer = session[:computer]
    @name = player.player_name
    @choice = player.pick_option(params[:choice])
    @comp_choice = computer.comp_choice(options)
    @outcome = Outcome.new.outcome(player,computer)
    @player_score = player.total_score
    @comp_score = computer.total_score
    session[:player] = player
    session[:computer] = computer
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
