require 'spec_helper'

describe "Static pages" do

  subject {page} # defines the page as the subject, 
                  # "should" calls this subject by Capybara
  describe "Home page" do
    #First visit the root path before checking tests.
    before { visit root_path } # Same as before(:each)

    it {should have_selector('h1', text: 'Sample App')}
		it {should have_selector('title', text: full_title('')) }
    it {should_not have_selector 'title', :text => ' | Home' }
		end

  describe "Help page" do
    before { visit help_path } # Same as before(:each)
    
    it {should have_selector('h1', text: 'Help')}
		it {should have_selector('title', text: full_title('Help'))}
  end

  describe "About page" do
    before { visit about_path } # Same as before(:each)
    it {should have_selector('h1', text: 'About Us')}
    it {should have_selector('title', text: full_title('About Us'))}
		end

	describe "Contact page" do
    before { visit contact_path } # Same as before(:each)
    it {should have_selector('h1', text: 'Contact Us')}
		it {should have_selector('title', text: full_title('Contact Us'))}
	end
end
