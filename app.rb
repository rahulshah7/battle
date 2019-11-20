# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/player'

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
    erb :play
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :attack
  end
end
