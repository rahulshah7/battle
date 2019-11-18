# frozen_string_literal: true

require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end
end
