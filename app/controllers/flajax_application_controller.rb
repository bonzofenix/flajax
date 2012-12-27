class ApplicationController < ActionController::Base
  after_filter :add_flajax

  def add_flajax
    # only run this in case it's an Ajax request.
    return unless request.xhr?
    @scroll_top = true
   
     # add different flashes to header
    ['Error', 'Warning', 'Notice', 'Message'].each do |level|
      flash_value = flash[level.downcase.to_sym]
      if flash_value.kind_of?(Array)
        text, options = flash_value
        @scroll_top = options[:scroll_top] if options.has_key?(:scroll_top)
      else
        text = flash_value
      end

      response.headers["X-Flash-#{level}"] = text unless text.blank?
    end
    response.headers['X-Scroll-Top'] = @scroll_top 

    # make sure flash does not appear on the next page
    flash.discard
  end
end
