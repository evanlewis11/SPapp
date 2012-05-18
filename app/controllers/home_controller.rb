class HomeController < ApplicationController
  
  def index
    @vendor = Vendor.new
  end
  
end
