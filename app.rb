# frozen_string_literal: true

require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello Gabby!'
  end
end
