require 'sinatra/base'
require 'shotgun'
require './models/players'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Players.new(params[:player1])
    $player2 = Players.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end


  get '/attack' do
    $player2.attack
    erb(:attack)
  end

end
