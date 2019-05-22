require 'pg'

class Musiclink

  def self.all
    connection = PG.connect(dbname: 'music_manager')
    result = connection.exec('SELECT * FROM musiclinklist;')
    result.map { |link| link['url'] }
  end
end
