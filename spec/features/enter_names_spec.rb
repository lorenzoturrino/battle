
feature "Enter names" do

	scenario 'adding player names' do
		sign_in_and_play
		expect(page).to have_text("Jesus vs The Devil")
	end

	scenario 'displaying p2 hp' do
		sign_in_and_play
		expect(page).to have_text("100")
	end

	scenario 'displaying p1 hp' do
		sign_in_and_play
		expect(page).to have_text("130")
	end
	
end
