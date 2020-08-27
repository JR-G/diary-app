require 'sinatra/base'

class Diary < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/add' do
    erb :add
  end

  post '/' do
    $entry = params[:entry]
    redirect '/'
  end

  run! if app_file == $0
end