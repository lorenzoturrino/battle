feature 'Player 1 attack' do
  scenario 'Player 1 can attack and get a confirmation' do
    sign_in_and_play
    click_button 'Attack Caspar'
    expect(page).to have_content('Caspar was attacked by Adil')
  end

  scenario "Player 2's hp will go down" do
    attack
    expect(page).to have_content ('Caspar : 50HP')
  end
end

feature 'Continue game for player 1' do
  scenario "Will direct to play-p2" do
    attack
    click_button('Continue')
    expect(page).to have_content("Caspar's turn")
  end
end

feature 'Player 2 attack' do
  scenario 'Player 2 can attack and get a confirmation' do
    attack_p2
    expect(page).to have_content('Adil was attacked by Caspar')
  end

  scenario "Player 2's hp will go down" do
    attack_p2
    expect(page).to have_content ('Adil : 50HP')
  end
end

feature 'Continue game for player 2' do
  scenario "Will direct to play-p1" do
    continue
    expect(page).to have_content("Adil's turn")
  end
end
