require 'sinatra'
require 'sinatra/reloader'
require_relative '../lib/bookmark.rb'
require 'pg'

class WebApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @bookmarks = Bookmark.all
    erb :index
  end

  post '/confirm_link' do
    Bookmark.create(params[:Title], params[:url])
    redirect '/'
  end

  post '/add_link' do
    erb :add_link
  end

  run! if app_file == $0
end