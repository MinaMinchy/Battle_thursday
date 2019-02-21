require './app'

feature 'switch turns' do
  scenario "player1's turn finishes and player2's turn starts" do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content("Sarah's turn next")
  end
end
