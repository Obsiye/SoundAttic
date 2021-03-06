
def index_page
  visit('/')
end

def sound_page
  visit('/sounds')
end

def create_sound_page
  index_page
  click_link('create_sounds')
end

def new_sound_form
  fill_in('title', with: 'haha')
  fill_in('artist', with: 'lil laugh')
  fill_in('genre', with: 'RAP')
end

def setup_test_database
  db = PG.connect(dbname: 'sounds_test')
  db.exec('TRUNCATE sounds')
  return db
end

def populate_database(db)
  db.exec("INSERT INTO sounds(title, genre, artist) VALUES('biglife.mp3', 'POP', 'Bella Yawn');")
  db.exec("INSERT INTO sounds(title, genre, artist) VALUES('havocroad.mp3', 'GRIME', 'Switch Quick');")
  db.exec("INSERT INTO sounds(title, genre, artist) VALUES('lilnoway.mp3', 'RAP', 'Lil NoWay');")
end
