feature 'creates a player' do

  scenario 'inputing player names' do
    start_game
    expect(page).to have_content "Hey, Broseph! You ready to play?"
  end
end

feature 'starts a game' do

  scenario 'displays players choice' do
    start_game
    click_link "START"
    click_button "ROCK"
    expect(page).to have_content "You chose to rock on"
  end
end
