require 'sinatra/base'
require_relative 'player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $user_1 = Player.new(params[:user_1])
    $user_2 = Player.new(params[:user_2])
    redirect '/play'
  end

  get '/play' do
    @username_1 = $user_1.name
    @username_2 = $user_2.name
    @attack = session[:attack]
    erb(:play)
  end

  post '/attack' do
    session[:attack] = true
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
