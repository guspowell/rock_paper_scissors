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
    player = session[:me]
    @choice = player.pick_option(:rock)
    puts @choice
    puts session.inspect
    erb :choice
  end

  get '/outcome' do
    outcome = Outcome.new
    computer = Computer.new
    @comp_choice = computer.comp_choice(options)
    player = session[:me]
    @outcome = outcome.outcome(player,computer)
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
