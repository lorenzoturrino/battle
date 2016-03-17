require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/names' do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    $game = Game.new(@player1, @player2)
    redirect('/play')
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opposing)
    erb(:attack)
  end

  post '/game_over_check' do
    @game = $game
    @game.game_over? ? redirect('/winner') : redirect('/change_turn')
  end

  post '/change_turn' do
    @game = $game
    redirect('/winner') if @game.game_over?
    @game.change_turn
    redirect('/play')
  end

  get '/winner' do
    @game = $game
    erb :winner
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
