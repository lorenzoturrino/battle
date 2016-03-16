feature 'Player 1 attack' do
  scenario 'Player 1 can attack and get a confirmation' do
    sign_in_and_play
    click_button 'Attack Caspar'
    expect(page).to have_content('Caspar was attacked by Adil')
  end

  scenario "Player 2's hp will go down" do
    first_turn
    expect(page).to have_content ('Caspar : 50HP')
  end
end

feature 'Continue game for player 1' do
  scenario "Will direct to play-p2" do
    first_turn
    click_button('Continue')
    expect(page).to have_content("Caspar's turn")
  end
end

feature 'Player 2 attack' do
  scenario 'Player 2 can attack and get a confirmation' do
    first_turn
    continue
    expect(page).to have_content('Adil was attacked by Caspar')
  end

  scenario "Player 2's hp will go down" do
    first_turn
    continue
    expect(page).to have_content ('Adil : 50HP')
  end
end

feature 'Continue game for player 2' do
  scenario "Will direct to play" do
    first_turn
    2.times{continue}
    expect(page).to have_content("Caspar : 40HP")
  end
end
