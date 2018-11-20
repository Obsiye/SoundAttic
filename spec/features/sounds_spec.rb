feature 'Sounds' do
  
  scenario 'display a list of sound titles' do
    sound_page
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
