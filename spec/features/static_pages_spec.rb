require 'spec_helper'

describe "Static pages" do
  let(:base_title) { "william's" }

  describe "Home page" do
    before { visit root_path }
    it "should have the content 'Sample App'" do
      page.should have_content('Sample App')
    end

    it "should have the right title" do

      expect(page).to have_title("#{base_title}")
    end
    it "should not have 'home' in the title" do
      expect(page).not_to have_title("Home")
    end
  end


  describe "Help page" do
    before { visit help_path }
    it "must include 'help' " do
      page.should have_content('Help haha')
    end
    it "should have the right title" do
      expect(page).to have_title("#{base_title} Help")
    end
  end

  describe "About page" do
    before { visit about_path }
    it "should be about" do
      page.should have_content('about')
    end
    it "should have the right title" do
      expect(page).to have_title("#{base_title} About Us")
    end
  end
  describe "Contact page" do
    before { visit contact_path}
    it "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      expect(page).to have_title("#{base_title} Contact")
    end
  end
end
