class VendorsController < ApplicationController
  
  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new
    @vendor.email = params[:vendor][:email]
    @vendor.password = params[:vendor][:password]
    
    if @vendor.save
      flash[:notice] = "Vendor account created!"
      redirect_to vendor_url(Vendor.find(@vendor.id))
    else
      flash[:alert] = "There was a problem."
      redirect_to root_url
    end
  end

  def update
    @vendor = Vendor.find_by_id(params[:id])
    respond_to do |format|
      if @vendor.update_attributes(params[:vendor])
        format.html { redirect_to @vendor, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @endor.errors, status: :unprocessable_entity }
      end
    end

    # @vendor.email = params[:vendor][:email]
    # @vendor.name = params[:vendor][:name]
    # @vendor.description = params[:vendor][:description]
    # @vendor.save

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


