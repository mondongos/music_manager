require 'sinatra/base'
require './lib/musiclink'

class MusicManager < Sinatra::Base

  get '/' do
    "Music Manager"
  end

  get '/musiclinks' do
    @music_links = Musiclink.all
    erb :musiclinks
  end

  run! if app_file == $0
end
