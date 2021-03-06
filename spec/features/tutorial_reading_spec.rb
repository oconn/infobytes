require 'spec_helper'

feature 'Tutorial Reader' do
  context "Upon first loading" do 
    before :each do
      user_create    
      tutorial_create    
      chapter_create    
      sub_chapter_create
      visit "/tutorials/#{@tutorial.id}"
    end

    scenario "must have tutorial and chapter names" do
      expect(page).to have_content(@tutorial.title)
      expect(page).to have_content(@chapter.title)
    end

    # scenario "must have linking icon next to chapter names that takes shows sub chapters" do
    #   chapter_create
    #   find(:xpath, "//a[contains(@href, \"chapters/"+@chapter.id.to_i.to_s+"\")]").first.click
    #   expect(page).to have_content(@sub_chapter.title)
    #   expect(page).to have_content(@tutorial.title)

    # end


  end

end