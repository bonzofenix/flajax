class FlashesController < ApplicationController
  def index
  end

  def create
    flash[:notice] = 'Hey this really worked!'

    respond_to do |format|
      format.js{ render nothing: true }
    end
  end

  def create_no_scroll_top
    flash[:notice] = [ 'Hey this really worked!', 
      scroll_top: false ]

    respond_to do |format|
      format.js{ render nothing: true }
    end
  end
end
