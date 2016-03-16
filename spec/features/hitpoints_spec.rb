feature "Hitpoints" do
  scenario "Shows player 2 hitpoints" do
    sign_in_and_play
    expect(page).to have_content("Caspar: 20 HP")
  end
end
