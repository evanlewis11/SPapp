class PassesController < ApplicationController
 
  def edit
  end

  def index
    @passes = Pass.all
  end

  def new
    @pass = Pass.new
  end

  def show
   @pass = Pass.find_by_id(params[:id])
   @passes = Pass.all
   
  end

  def create
    @pass = Pass.new
    @pass.title = params[:pass][:title]
    @pass.description = params[:pass][:description]
    @pass.live_stream = params[:pass][:live_stream]
    @pass.availability_date = params[:pass][:availability_date]
    @pass.vendor_id = session[:login_id]
    @pass.embed_code = params[:pass][:embed_code]
    if @pass.save
      flash[:notice] = "New pass created!"
      redirect_to passes_url
    else
      flash[:alert] = "There was a problem."
      redirect_to root_url
    end
  end
end
