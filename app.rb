require 'sinatra/base'
require './lib/diary'
#require_relative './diary_setup'

class DiaryApp < Sinatra::Base
  get '/' do
    "bookmarks"
    # erb :index
  end

  get '/diary' do
    Diary.create_list
    @diary = Diary.return_list
    erb :index
  end

  get '/add' do
    erb :add
  end

  post '/diary' do
    Diary.add(params[:entry])
    redirect '/diary'
  end

  run! if app_file == $0
end