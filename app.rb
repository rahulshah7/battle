# frozen_string_literal: true

require 'sinatra/base'

class Battle < Sinatra::Base
  # session secret required per https://groups.google.com/d/msg/sinatrarb/pUFSoyQXyQs/XUycTqrsTeEJ
  set :session_secret, 'here be dragons'
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session['player1'] = params['player1']
    session['player2'] = params['player2']
    redirect '/play'
  end

  get '/play' do
    @player1 = session['player1']
    @player2 = session['player2']
    erb :play
  end
end
