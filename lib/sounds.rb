require 'pg'

class Sounds

  def self.all
    database = 'sounds'
    database = 'sounds_test' if ENV['ENVIRONMENT'] == 'test'
    db = PG.connect(dbname: database)
    result = db.exec('SELECT * FROM SOUNDS')
    result.map { |sound| sound }
  end

  def self.create
    
  end

end
