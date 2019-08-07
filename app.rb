require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    get '/piglatinize' do
        erb :piglatinize
    end

    post '/piglatinize' do
        @piglatinizerer = PigLatinizer.new

        erb :piglatinize
    end

end