require 'pg'

class Sounds

  def self.all
    db = PG.connect( dbname: 'sounds')
    result = db.exec('SELECT * FROM SOUNDS')
    result.map {|sound| sound}
  end

end
