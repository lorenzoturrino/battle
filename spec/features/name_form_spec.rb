

feature 'Form takes name', :type => :feature do
  scenario 'Player name shows on screen' do
    sign_in_and_play
    expect(page).to have_content("Adil v Caspar")
  end
end
