require 'spec_helper'

feature 'shows flash messages', js: true do
  background do
    visit root_path
  end
  describe  'when posting a form with remote: true' do
   before :each do
      within("#remote-form") do
        click_button 'show me the flash!'
      end
    end

    scenario 'shows the flash'  do
      page.should have_content("Hey this really worked!") 
    end

    scenario 'shows only one flash' do
      page.should have_css('.alert', visible: true, count: 1)
    end
  end
end

