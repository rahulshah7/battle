# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params['player1'])
    $player2 = Player.new(params['player2'])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player1_hp = $player1.hp
    @player2_hp = $player2.hp
    erb :play
  end

  get '/attack' do
    Game.new.attack($player2)
    @player1 = $player1.name
    @player2 = $player2.name
    erb :attack
  end
end
