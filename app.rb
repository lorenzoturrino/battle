require 'sinatra/base'

class Battle < Sinatra::Base



  get '/names' do
  	erb(:form)
  end

  post '/welcome' do
  	@player1= params[:Name1]
  	@player2= params[:Name2]
    erb(:index)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
