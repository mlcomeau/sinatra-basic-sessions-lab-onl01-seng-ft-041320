require_relative 'config/environment'

class App < Sinatra::Base
    configure do 
        enable :sessions 
        set :session_secret, "1234567890"
    end 

    get '/' do 
        erb :index 
    end 

    post '/checkout' do 
        session[:item] = params[:item]
        @session = session[:item]

        erb :checkout
    end 
end