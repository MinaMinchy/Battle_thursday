require './app'

feature 'hit points' do
  scenario "player1 sees player 2's hit points" do
    visit('/')
    fill_in :player1, with: 'Maria'
    fill_in :player2, with: 'Sarah'
    click_button 'Submit'
    expect(page).to have_content("Sarah has 0 points")
 end
end
