require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  get '/play-p1' do
    @game = $game
    erb(:play_p1)
  end

  get '/play-p2' do
    @game = $game
    erb(:play_p2)
  end

  post '/names' do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    $game = Game.new(@player1, @player2)
    redirect('/play-p1')
  end

  get '/attack-p1' do
    @game = $game
    @game.attack(@game.player2)
    erb(:attack_p1)
  end

  get '/attack-p2' do
    @game = $game
    @game.attack(@game.player1)
    erb(:attack_p2)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
