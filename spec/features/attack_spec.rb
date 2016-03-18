feature 'Player 1 attack' do
  scenario 'Player 1 can attack and get a confirmation' do
    first_turn
    expect(page).to have_content('Caspar was attacked by Adil')
  end

  scenario "Player 2's hp will go down" do
    first_turn
    expect(page).not_to have_content ("Caspar : 60HP")
  end
end


feature 'Player 2 attack' do
  scenario 'Player 2 can attack and get a confirmation' do
    first_turn
    continue
    expect(page).to have_content('Adil was attacked by Caspar')
  end

  scenario "Player 1's hp will go down" do
    first_turn
    continue
    expect(page).not_to have_content ('Adil : 60HP')
  end
end

feature 'Attack options' do
  scenario 'can do a fixed attack' do
    sign_in_and_play
    expect(page).to have_button('fixed_button')
  end
end




feature 'Continuing game after an attack' do

  scenario 'Page has a Continue button' do
    first_turn
    expect(page).to have_button("Continue")
  end

  scenario 'Will send back to play page when continue is pressed' do
    first_turn
    click_button('Continue')
    expect(page).to have_button("attack_button")
  end
end
