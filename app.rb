require 'sinatra/base'

class Diary < Sinatra::Base
  get '/' do
    'Hello diary'
  end

  run! if app_file == $0
end