require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('karp') }
    it { should have_title('karp') }
    it { should_not have_title('| home') }
  end

  describe "Help page" do
    before { visit help_path }
    
    it { should have_content('help') }
    /it { should have_title('karp | help') }/
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('about') }
    /it { should have_title('karp | about') }/
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('contact') }
    /it { should have_title('karp | contact') }/
  end

  describe "Send Text page" do
    before { visit send_text_path }

    /it { should have_content('send') }/
  end

end