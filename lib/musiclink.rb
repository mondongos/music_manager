require 'pg'

class Musiclink

  def self.all
    if ENV['ENVIRONMENT'] == 'test '
      connection = PG.connect(dbname: 'music_manager_test')
    else
      connection = PG.connect(dbname: 'music_manager')
    end
    result = connection.exec("SELECT * FROM musiclinklist;")
    result.map { |link| link['url'] }
  end
end
