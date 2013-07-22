require 'spec_helper'

describe "Static pages" do
let(:base_title){"williams's" }
  
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    
    it "should have the right title" do
  visit '/static_pages/home'
  expect(page).to have_title("#{base_title}")
end
  it "should not have 'home' in the title" do
  visit'/static_pages/home'
  expect(page).not_to have_title("Home")
  end
  end
  
  
  
 describe "Help page" do
   it "must include 'help' " do
     visit  '/static_pages/help'
     page.should have_content('Help haha')
   end
       it "should have the right title" do
  visit '/static_pages/help'
  expect(page).to have_title("#{base_title} Help")
 end
 end
 
 describe "About page" do 
   it "should be about" do
     visit '/static_pages/about'
     page.should have_content('about')
   end
       it "should have the right title" do
  visit '/static_pages/about'
  expect(page).to have_title("#{base_title} About Us")
 end
 end
end