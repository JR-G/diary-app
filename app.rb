require 'sinatra/base'
require_relative './diary_setup'

class DiaryApp < Sinatra::Base
  get '/' do
    "bookmarks"
    # erb :index
  end

  get '/diary' do
    @diary = Diary.list
    p @diary
    erb :index
  end

  get '/add' do
    erb :add
  end

  post '/diary' do
    Diary.add(params[:entry])
    p Diary
    p params
    redirect '/diary'
  end

  run! if app_file == $0
end