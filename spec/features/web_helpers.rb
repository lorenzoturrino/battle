
def sign_in_and_play
  visit('/')
  fill_in(:player1, with: 'Adil')
  fill_in(:player2, with: 'Caspar')
  click_button 'submit'
end

def first_turn
  sign_in_and_play
  click_button 'attack'
end

def continue
  click_button('Continue')
  click_button('attack')
end
