require 'rails_helper'

feature 'pictures' do

  context 'no pictures have been added' do
    scenario 'shows prompt to add a new picture' do
      visit '/pictures'
      expect(page).to have_content "No pictures yet"
      expect(page).to have_link "Upload a picture"
    end
  end

  context 'pictures have been added' do
    before { Picture.create(description: "This is actually a picture") }

    scenario 'shows pictures' do
      visit '/pictures'
      expect(page).to have_content("This is actually a picture")
    end
  end

  context 'creating a picture' do
    scenario 'shows a page to create a picture' do
      visit '/pictures'
      click_link "Upload a picture"
      expect(page).to have_field "Description"
    end
  end
end
