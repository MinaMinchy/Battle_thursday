require './app'

feature 'attack' do
  scenario "player1 attacks player 2 and gets a confirmation" do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content("Maria attacked Sarah")
 end
end
