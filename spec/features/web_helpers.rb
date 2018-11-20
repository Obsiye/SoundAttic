
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
