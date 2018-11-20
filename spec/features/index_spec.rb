feature 'index page' do

  scenario 'expect SoundAttic on page' do
    visit('')
    expect(page).to have_content('SoundAttic')
  end

end
