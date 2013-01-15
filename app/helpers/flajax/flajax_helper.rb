module Flajax
  module FlajaxHelper

    def add_flajax
      # only run this in case it's an Ajax request.
      return unless request.xhr?
    
      # add different flashes to header
      response.headers['X-Flash-Error'] = flash[:error] unless flash[:error].blank?
      response.headers['X-Flash-Warning'] = flash[:warning] unless flash[:warning].blank?
      response.headers['X-Flash-Notice'] = flash[:notice] unless flash[:notice].blank?
      response.headers['X-Flash-Message'] = flash[:message] unless flash[:message].blank?
    
      response.headers['X-Scroll-Top'] = true

      # make sure flash does not appear on the next page
      flash.discard
    end
  end
end
