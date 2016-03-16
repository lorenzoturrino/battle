RSpec.feature 'attacking opponent' do

  scenario 'displays a confirmation that the opponent has been attacked' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content "You attacked player_two."
  end

  scenario 'player 2 hp are reduced by 10hp' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content "player_two now has 90hp."
  end

end
