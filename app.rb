require 'sinatra/base'
require './lib/musiclink'

class MusicManager < Sinatra::Base

  get '/' do
    @music_links = Musiclink.all
    erb :index
  end
  run! if app_file == $0
end
