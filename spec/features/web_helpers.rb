def sign_in_and_play
	visit "/"
	fill_in "Name1", :with => "Jesus"
	fill_in "Name2", :with => "The Devil"
	click_button "Submit_Players"
end