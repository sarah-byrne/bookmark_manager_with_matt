require './lib/bookmark_storer'
require 'sinatra/base'

class Bookmark < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/bookmarks' do
    redirect('/bookmarks')
  end

  get '/bookmarks' do
    @bookmarks = Bookmark_Storer.view_bookmarks
    erb :bookmarks
  end

  get '/add-bookmark' do
    erb :add_bookmark
  end

  post '/new-bookmark' do
    Bookmark_Storer.add_bookmark(params[:url], params[:title])
    redirect('/bookmarks')
  end

  run! if app_file == $0

end
