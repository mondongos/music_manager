require 'sinatra/base'
require './lib/musiclink'

class MusicManager < Sinatra::Base

  get '/' do
    @music_links = Musiclink.all
    erb :index
  end

  get '/new' do
    erb :new
  end

  post '/newlink' do
    url = params['url']
    connection = PG.connect(dbname: 'music_manager_test')
    connection.exec("INSERT INTO musiclinklist (url) VALUES('#{url}')")
    redirect '/'
  end

  run! if app_file == $0
end
