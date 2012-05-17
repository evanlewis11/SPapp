class SessionsController < ApplicationController
  
    def destroy
      session[:login_id] = nil
      flash[:notice] = "See ya!"
      redirect_to root_url
    end

    def new

    end

    def create
      user = User.find_by_login(params[:login])

      if user
        if user.password == params[:password]
          session[:login_id] = user.id
          redirect_to vendor_edit_url, notice: "Hello, #{user.login}"
        else
          redirect_to sessions_url, notice: "Bad password!"
        end
      else
        redirect_to sessions_url, notice: "Bad login ID!"
      end
    end
  end
