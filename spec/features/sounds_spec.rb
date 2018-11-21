feature 'Sounds' do

  before(:each) do
    db = setup_test_database
    populate_database(db)
  end
  
  scenario 'display a list of sound titles' do
    index_page
    click_link('view_sounds')
    expect(page).to have_content('biglife.mp3')
    expect(page).to have_content('havocroad.mp3')
    expect(page).to have_content('lilnoway.mp3')
  end

  scenario 'return back to index page' do
    sound_page
    click_link('back')
    expect(page).to have_content('SoundAttic')
    expect(page).not_to have_content('biglife.mp3')
  end

end
