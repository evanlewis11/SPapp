class VendorsController < ApplicationController
  
  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new
    @vendor.name = params[:vendor][:name]
    @vendor.bio = params[:vendor][:bio]
    @vendor.genre = params[:vendor][:genre]
    
    if @vendor.save
      flash[:notice] = "Vendor account created!"
      redirect_to vendors_url
    else
      flash[:alert] = "There was a problem."
      render new_vendor_url
    end
  end

  def update
    @vendor = Vendor.new
    @vendor = Vendor.find_by_id(params[:id])
    @vendor.name = params[:vendor][:name]
    @vendor.bio = params[:vendor][:bio]
    @vendor.genre = params[:vendor][:genre]

    if @vendor.is_data_ok?
      @vendor.save
    else
      flash[:alert] = "Something is wrong with your data!"
    end
  end

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find_by_id(params[:id])
    @passes = @vendor.passes.all
  end

  def edit
    vendor_id = params[:id]
    @vendor = Vendor.find_by_id(params[:id])
  end
end


