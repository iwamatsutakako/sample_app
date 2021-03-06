require 'spec_helper'

describe "Static pages" do

    subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    #以下の文と同じ
    #it { should have_title("Ruby on Rails Tutorial Sample App") }
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



=begin
  
rescue Exception => e
  
end

require 'spec_helper'

describe "Static pages" do
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_content(heading) }
    it { should have_title(full_title(page_title)) }
  end

   it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))

    click_link "Help"
    expect(page).to have_title(full_title('Help'))

    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))

    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title(''))

    click_link "sample app"
    expect(page).to have_title(full_title(''))
  end


  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }
    
    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
  end


  describe "Help page" do
    before { visit help_path }
    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
  end


  describe "About page" do
    before { visit about_path }
    let(:heading)    { 'About' }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
  end


  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end



=end