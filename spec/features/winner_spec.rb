feature 'Player 1 wins' do
  scenario 'Page shows Winners name' do
    first_turn
    10.times{continue}
    click_button('Continue')
    expect(page).to have_content("Adil is the winner!")
  end
end
