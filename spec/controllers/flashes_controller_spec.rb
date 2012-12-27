require 'spec_helper'

describe FlashesController do
  
  render_views

  describe 'When get index' do
    it 'renders index' do
      get :index
      response.should be_success
    end

    it 'renders the message template' do
      get :index
      response.should render_template('_messages')
    end
  end

  describe 'When post to create' do
    it 'renders nothing' do
      post :create, format: 'js'
      response.body.should be_blank
    end

    it 'flashs an alert' do
      post :create, format: 'js'
      flash[:notice].should have_content("Hey this really worked!") 
    end
  end
end
