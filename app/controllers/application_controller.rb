class ApplicationController < ActionController::Base
  protect_from_forgery

  def application
    @vendor = Vendor.find_by_name(params[:name])
  end
  
end
