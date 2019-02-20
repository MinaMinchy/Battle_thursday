require './app'

feature 'player names' do
  scenario 'players enter names' do
    sign_in_and_play
    expect(page).to have_content("Maria")
 end
end
