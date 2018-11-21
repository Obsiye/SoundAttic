require 'pg'

class Sounds

  def self.all
    db = connect
    result = db.exec('SELECT * FROM sounds')
    result.map { |sound| sound }
  end

  def self.create(sound)
    db = connect
    values = "'#{sound[:title]}', '#{sound[:genre]}', '#{sound[:artist]}', '#{sound[:release_year]}'"
    puts "date is #{sound[:release_year]}."
    puts "hello the sound year is #{sound[:release_year]}"
    statement = "INSERT INTO sounds(title, genre, artist, release_year) VALUES(#{values});"
    result =   db.exec(statement)
  end

  def self.connect
    database = 'sounds'
    database = 'sounds_test' if ENV['ENVIRONMENT'] == 'test'
    db = PG.connect(dbname: database)
  end

end
