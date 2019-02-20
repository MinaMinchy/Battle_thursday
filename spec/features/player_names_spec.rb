require './app'

feature 'player names' do
  scenario 'players enter names' do
    visit('/')
    fill_in :player1, with: 'Maria'
    fill_in :player2, with: 'Sarah'
    click_button 'Submit'
    expect(page).to have_content("Maria")
 end
end
