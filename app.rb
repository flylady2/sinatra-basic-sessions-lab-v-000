require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "randomnumber"
  end

  get '/' do

    #binding.pry
    erb :index
  end

  post '/checkout' do
    @session = session
    @session[:item] = params[:item]
    #binding.pry
    @item = params[:item]
    erb :checkout
  end

end
