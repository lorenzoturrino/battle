require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    Game.save(Game.new(@player1, @player2))
    redirect('/play')
  end

  get '/play' do
    @game = Game.load
    erb(:play)
  end

  post '/check_attack' do
    @game = Game.load
    @attack_type = params[:attack_type]
    @game.set_attack(@attack_type)
    redirect('/attack')
  end

  get '/attack' do
    @game = Game.load
    @game.attack(@game.opposing)
    erb(:attack)
  end

  post '/change_turn' do
    @game = Game.load
    redirect('/winner') if @game.game_over?
    @game.change_turn
    redirect('/play')
  end

  get '/winner' do
    @game = Game.load
    erb :winner
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
