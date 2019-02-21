require './app'

feature 'attack' do
  scenario "player1 attacks player 2 and gets a confirmation" do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content("Maria attacked Sarah")
  end
  scenario "player1 attacks player 2 and player 2's HP is reduced by 10" do
    sign_in_and_play
    # start with 30 points
    click_link('Attack')
    expect(page).to have_content("Sarah has 20")
  end
end
