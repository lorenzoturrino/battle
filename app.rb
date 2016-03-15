require 'sinatra/base'


class Battle < Sinatra::Base

  set :session_secret, 'super secret'
  enable :sessions


  get '/' do
  	erb(:form)
  end

  post '/names' do
    session[:Name1] = params[:Name1]
    session[:Name2] = params[:Name2]
    redirect "/play"
  end

  get '/play' do
    @player1_hp = 130
    @player2_hp = 100
    @player1= session[:Name1]
    @player2= session[:Name2]
    erb(:index)
  end

  get '/attack' do
  	@player1= session[:Name1]
    @player2= session[:Name2]
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
