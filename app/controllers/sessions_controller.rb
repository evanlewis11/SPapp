class SessionsController < ApplicationController
  
    def destroy
      session[:login_id] = nil
      flash[:notice] = "See ya!"
      redirect_to root_url
    end

    def new

    end

    def create
      vendor = Vendor.find_by_email(params[:email])

      if vendor
        if vendor.authenticate(params[:password])
          session[:login_id] = vendor.id
          redirect_to vendor_url(vendor.id), notice: "Hello, #{vendor.email}"
        else
          redirect_to new_session_url, notice: "Bad password!"
        end
      else
        redirect_to new_session_url, notice: "Bad login ID!"
      end
    end
  end
