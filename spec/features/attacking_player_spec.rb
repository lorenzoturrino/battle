
feature "Attack player" do 

	scenario 'attacking player 2 and receive confirmation' do
		sign_in_and_play
		click_button "ATTACK"	
		expect(page).to have_text("The Devil has been hit!")
	end

end