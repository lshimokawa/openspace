require 'spec_helper'

describe "Navigation" do

  describe "GET /" do
    it "shows home page" do
      visit root_path
      page.should have_content "Open Spaces"
    end

    it "navigates to /openspace" do
      visit root_path
      click_link 'Open Space'
      page.should have_content "Open Spaces"
    end

    it "shows home page" do
      visit root_path
      click_link 'Acerca de'
      page.should have_content "Acerca de"
    end
  end

  describe "GET /openspace" do
    it "works!" do
      visit openspace_path
      page.should have_content "Open Spaces"
    end
  end

  describe "GET /about" do
    it "works!" do
      visit about_path
      page.should have_content "Acerca de"
    end
  end

end
