require 'sinatra'
require 'sinatra/reloader'

class Bookmark < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'hello'
  end

  run! if app_file == $0
end