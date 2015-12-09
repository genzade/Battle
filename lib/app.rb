require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    session[:username_1] = params[:username_1]
    session[:username_2] = params[:username_2]
    p session
    redirect '/play'
  end

  get '/play' do
    @username_1 = session[:username_1]
    @username_2 = session[:username_2]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
