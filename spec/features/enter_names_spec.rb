
feature "Enter names" do 

	scenario 'adding player names' do
		visit "/names"
		fill_in "Name1", :with => "Jesus"
		fill_in "Name2", :with => "The Devil"
		click_button "Submit_Players"
		expect(page).to have_text("Jesus vs The Devil")
	end

end