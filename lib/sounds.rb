require 'pg'

class Sounds

  def self.all
    db = connect
    result = db.exec('SELECT * FROM sounds')
    result.map { |sound| sound }
  end

  def self.create
    db = connect
    statement = "INSERT INTO sounds(title, genre, artist, release_year) VALUES('biglife.mp3', 'POP', 'Bella Yawn');"
    result =   db.exec(statement)
  end

  def self.connect
    database = 'sounds'
    database = 'sounds_test' if ENV['ENVIRONMENT'] == 'test'
    db = PG.connect(dbname: database)
  end

end
