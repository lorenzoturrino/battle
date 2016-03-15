
feature "Attack player" do

	scenario 'attacking player 2 and receive confirmation' do
		sign_in_and_play
		click_button 'attack2'
		expect(page).to have_text("The Devil has been hit!")
	end

	scenario 'attacking player 1 and receive confirmation' do
		sign_in_and_play
		click_button 'attack1'
		expect(page).to have_text("Jesus has been hit!")
	end

end
