require 'sinatra/base'

require_relative "lib/player.rb"
require_relative "lib/options.rb"
require_relative "lib/computer.rb"
require_relative "lib/outcome.rb"

class RPS < Sinatra::Base

  enable :sessions

  options = Options.new

  get '/' do
    @name= params[:name]
    player = Player.new
    session[:me] = player
    player.name (@name)
    erb :index
  end

  get '/choice' do
    erb :choice
  end

  get '/outcome' do
    player = session[:me]
    @choice = player.pick_option(params[:choice])

    computer = Computer.new
    @comp_choice = computer.comp_choice(options)
    puts @comp_choice
    
    outcome = Outcome.new
    @outcome = outcome.outcome(player,computer)

    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
