feature 'Sounds' do
  
  scenario 'display a list of sound titles' do
    visit('/sounds')
    expect(page).to have_content 'biglife.mp3'
    expect(page).to have_content 'havocroad.mp3'
    expect(page).to have_content 'lilnoway.mp3'
  end

end
