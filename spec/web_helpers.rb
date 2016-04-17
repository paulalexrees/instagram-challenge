def create_picture
  visit '/pictures/new'
  fill_in :description, with: "Kitty"
  click_link 'Create'
end
