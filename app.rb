# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params['player1']), Player.new(params['player2']))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    $game.attack($game.player2)
    @game = $game
    erb :attack
  end
end
