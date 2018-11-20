feature 'create sound' do

  scenario 'visit create sound page' do
    create_sound_page
    expect(page).to have_field('title')
    expect(page).to have_field('artist')
    expect(page).to have_field('genre')
    expect(page).to have_field('release_date')
  end

  scenario 'submit new sound form' do
    create_sound_page
    new_sound_form
    click_button('submit')
    expect(page).to have_content('lil laugh')
    expect(page).to have_content('haha')
    expect(page).to have_content('2017-09-19')
  end
end
