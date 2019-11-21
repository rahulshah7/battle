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
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    @player1_hp = $game.player1.hp
    @player2_hp = $game.player2.hp
    erb :play
  end

  get '/attack' do
    $game.attack($game.player2)
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    erb :attack
  end
end
