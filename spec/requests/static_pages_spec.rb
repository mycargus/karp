require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'karp'" do
      visit root_path
      expect(page).to have_content('karp')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("karp")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
    /
    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("karp | Help")
    end
    /
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit about_path
      expect(page).to have_content('About')
    end
    /
    it "should have the title 'About'" do
      visit about_path
      expect(page).to have_title("karp | About")
    end
    /
  end

/
  describe "Contact page" do

    it "should have the content 'contact'" do
      visit contact_path
      expect(page).to have_content('contact')
    end

    it "should have the title 'contact'" do
      visit contact_path
      expect(page).to have_title("karp | contact")
    end
  end
/
end