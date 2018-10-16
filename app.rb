require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "randomnumber"
  end

  get '/' do
    @session = session
    #binding.pry
    erb :index
  end

  post '/checkout' do
    @sessions[:item] = params[:item]
    erb :checkout
  end

end
