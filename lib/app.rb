require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    $user_1 = Player.new(params[:user_1])
    $user_2 = Player.new(params[:user_2])
    $game = Game.new($user_1, $user_2)
    redirect '/play'
  end

  get '/play' do
    @username_1 = $user_1
    @username_2 = $user_2
    erb(:play)
  end

  get '/attack' do
    # @username_1 = $user_1
    # @username_2 = $user_2
    # @username_2.attack(@username_1)
    @game = $game
    @game.attack(@game.player_1)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
