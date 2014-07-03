require 'spec_helper'

describe "StaticPages" do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
describe "Home Page" do
	it "should have the content 'Weipo App | HOME'" do
		visit '/static_pages/home'
		expect(page).to have_content('HOME')
    end
  end

describe "Help Page" do
	it "should have the content 'Weipo App | HELP'" do
		visit '/static_pages/help'
		expect(page).to have_content('HELP')
    end
  end

describe "About Page" do
	it "should have the content 'Weipo App | ABOUT'" do
		visit '/static_pages/about'
		expect(page).to have_content('ABOUT')
    end
  end
end
