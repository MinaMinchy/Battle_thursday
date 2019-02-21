require './app'

feature 'attack' do
  scenario "player1 attacks player 2 and gets a confirmation" do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content("Maria attacked Sarah")
  end
  scenario "HP is reduced by 10" do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content("50/60 HP")
  end
  scenario "Player2 attack Player1 and gets confirmation" do
    sign_in_and_play
    click_link('Attack')
    click_link('OK')
    click_link('Attack')
    expect(page).to have_content("Maria attacked Sarah")
  end
end
