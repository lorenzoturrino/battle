feature 'Player attack' do
  scenario 'Player 1 can attack and get a confirmation' do
    sign_in_and_play
    click_button 'Attack Caspar'
    expect(page).to have_content('Caspar was attacked by Adil')
  end
end
