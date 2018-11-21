
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
  fill_in('release_date', with: '2017-09-19')
end

def setup_test_database
  db = PG.connect(dbname: 'sounds_test')
  db.exec('TRUNCATE sounds')
  return db
end

def populate_database(db)
  db.exec("INSERT INTO sounds(title, genre, artist, release_year) VALUES('biglife.mp3', 'POP', 'Bella Yawn', '2018-11-20');")
  db.exec("INSERT INTO sounds(title, genre, artist, release_year) VALUES('havocroad.mp3', 'GRIME', 'Switch Quick', '2018-11-20');")
  db.exec("INSERT INTO sounds(title, genre, artist, release_year) VALUES('lilnoway.mp3', 'RAP', 'Lil NoWay', '2018-11-20');")
end
