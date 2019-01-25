require 'sinatra/base'
require 'shotgun'
require './models/players'
require './models/game'


class Battle < Sinatra::Base


enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Players.new(params[:player1]),Players.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end


  get '/attack' do
    $game.attack
    erb(:attack)
  end

end
