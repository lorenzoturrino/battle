def sign_in_and_play
  visit('/')
  fill_in(:player1, with: 'Adil')
  fill_in(:player2, with: 'Caspar')
  click_button 'submit'
end

def attack
  sign_in_and_play
  click_button 'Attack Caspar'
end

def attack_p2
  attack
  click_button('Continue')
  click_button('Attack Adil')
end

def continue
  attack_p2
  click_button('Continue')
end
