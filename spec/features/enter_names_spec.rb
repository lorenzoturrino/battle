
feature "Enter names" do

	scenario 'adding player names' do
		visit "/"
		fill_in "Name1", :with => "Jesus"
		fill_in "Name2", :with => "The Devil"
		click_button "Submit_Players"
		expect(page).to have_text("Jesus vs The Devil")
	end

	scenario 'displaying p2 hp' do
		visit "/play"
		expect(page).to have_text("100")
	end

	scenario 'displaying p1 hp' do
		visit "/play"
		expect(page).to have_text("130")
	end
	
end
