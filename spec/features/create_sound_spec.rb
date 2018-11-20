feature 'create sound' do
  scenario 'submit new sound form' do
    index_page
    new_sound_form
    click_button('submit')
    expect(page).to have_content('lil laugh')
    expect(page).to have_content('haha')
    expect(page).to have_content('2017-09-19')
  end
end
