feature 'index page' do

  scenario 'expect SoundAttic on page' do
    index_page
    expect(page).to have_content('SoundAttic')
  end

end
