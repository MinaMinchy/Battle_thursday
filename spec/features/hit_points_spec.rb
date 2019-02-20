require './app'

feature 'hit points' do
  scenario "player1 sees player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Sarah has 0 points")
 end
end
