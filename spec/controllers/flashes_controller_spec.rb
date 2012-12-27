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
      xhr :post, :create, format: 'js'
      response.headers['X-Flash-Notice'].should  == "Hey this really worked!"
    end

    it 'flashs an alert with scroll top' do
      xhr :post, :create, format: 'js'
      controller.add_flajax
      response.headers['X-Scroll-Top'].should be_true
    end

    it 'flashs an alert, no scroll top animation' do
      xhr :post, :create_no_scroll_top, format: 'js'
      controller.add_flajax
      response.headers['X-Scroll-Top'].should be_false
    end
  end
end
