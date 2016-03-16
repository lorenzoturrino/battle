
def sign_in_and_play
  visit('/')
  fill_in(:player1, with: 'Adil')
  fill_in(:player2, with: 'Caspar')
  click_button 'submit'
end

def first_turn
  sign_in_and_play
  click_button 'Attack Caspar'
end

def second_turn
  first_turn
  click_button('Continue')
  click_button('Attack Adil')
end

def third_turn
  second_turn
  click_button('Continue')
  click_button('Attack Caspar')
end