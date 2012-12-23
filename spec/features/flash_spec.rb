require 'spec_helper'

feature 'shows flash messages', js: true do
  background do
    visit root_path
  end
  
  scenario 'when posting a form with remote: true' do
    within("#remote-form") do
      click_button 'show me the flash!'
    end
    page.should have_content("Hey this really worked!") 
  end

end

