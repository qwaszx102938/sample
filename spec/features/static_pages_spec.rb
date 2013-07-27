require 'spec_helper'

describe "Static pages" do
let(:base_title){"williams's" }
  
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      page.should have_content('Sample App')
    end
    
    it "should have the right title" do
  visit root_path
  expect(page).to have_title("#{base_title}")
end
  it "should not have 'home' in the title" do
  visit root_path
  expect(page).not_to have_title("Home")
  end
  end
  
  
  
 describe "Help page" do
   it "must include 'help' " do
     visit help_path
     page.should have_content('Help haha')
   end
       it "should have the right title" do
  visit help_path
  expect(page).to have_title("#{base_title} Help")
 end
 end
 
 describe "About page" do 
   it "should be about" do
     visit about_path
     page.should have_content('about')
   end
       it "should have the right title" do
  visit about_path
  expect(page).to have_title("#{base_title} About Us")
 end
  end
      describe "Contact page" do

        it "should have the content 'Contact'" do
          visit contact_path
          expect(page).to have_content('Contact')
        end

        it "should have the title 'Contact'" do
          visit contact_path
          expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
        end
      end
end
