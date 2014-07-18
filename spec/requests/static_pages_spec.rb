require 'spec_helper'

describe "StaticPages" do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)

#let(:base_title) {"Weipo App"}
#
#describe "Home Page" do
#	it "should have the content 'Weipo App | HOME'" do
#		#visit '/static_pages/home'
#		visit root_path
#		expect(page).to have_content("#{base_title} | HOME")
#    end
#  end
#
#describe "Help Page" do
#	it "should have the content 'Weipo App | HELP'" do
#		#visit '/static_pages/help'
#		visit help_path
#		expect(page).to have_content("#{base_title} | HELP")
#    end
#  end
#
#describe "About Page" do
#	it "should have the content 'Weipo App | ABOUT'" do
#		#visit '/static_pages/about'
#		visit about_path
#		expect(page).to have_content("#{base_title} | ABOUT")
#    end
#  end
#
#describe "Contact Page" do
#	it "should have the content 'Weipo App | CONTACT'" do
#		#visit '/static_pages/contact'
#		visit contact_path
#		expect(page).to have_content("#{base_title} | CONTACT")
#    end
#  end
#end

require 'spec_helper'

	describe "Static pages" do

	  subject { page }

	  describe "Home page" do
	    before { visit root_path }

	    it { should have_content('Weipo App') }
	    it { should have_title(full_title('')) }
	    it { should_not have_title('| Home') }
	  end

	  describe "Help page" do
	    before { visit help_path }

	    it { should have_content('Help') }
	    it { should have_title(full_title('Help')) }
	  end

	  describe "About page" do
	    before { visit about_path }

	    it { should have_content('About') }
	    it { should have_title(full_title('About Us')) }
	  end

	  describe "Contact page" do
	    before { visit contact_path }

	    it { should have_content('Contact') }
	    it { should have_title(full_title('Contact')) }
	  end
	end
end