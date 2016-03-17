RSpec.feature 'visualizing player hp' do

  scenario 'player 1 hp can be seen' do
    sign_in_and_play
    expect(page).to have_content 'player_one: 100'
  end

  scenario 'player 2 hp can be seen' do
    sign_in_and_play
    expect(page).to have_content 'player_two: 100'
  end

end
