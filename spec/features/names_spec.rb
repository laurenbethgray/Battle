feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Lauren'
    fill_in :player_2_name, with: 'John'
    click_button 'Submit'

    save_and_open_page 

    expect(page).to have_content 'Lauren vs. John'
  end
end
