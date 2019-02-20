require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2]) 
    redirect to('/play')
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2_points = 0
    erb :play
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :attack 
  end

  # start the server if ruby file executed directly
 run! if app_file == $0
end
