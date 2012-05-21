SPapp::Application.routes.draw do


  root :to => "home#index"
  
  get "sessions/new", :as => :new_session
  post "sessions/create", :as => :sessions

  get "logout" => 'sessions#destroy', :as => "logout"
  
  get "passes", :controller => "passes", :action => "index", :as => :passes
  post "passes", :controller => "passes", :action => "create"
  get "passes/new", :controller => "passes", :action => "new", :as => :new_pass
  get "passes/:id", :controller => "passes", :action => "show", :as => :pass
  
  get "vendors", :controller => "vendors", :action => "index", :as => :vendors
  post "vendors", :controller => "vendors", :action => "create"
  get "vendors/new", :controller => "vendors", :action => "new", :as => :new_vendor
  get "vendors/:id", :controller => "vendors", :action => "show", :as => :vendor
  put "vendors/:id", :controller => "vendors", :action => "update"
  get "vendors/:id/edit", :controller => "vendors", :action => "edit", :as => :vendor_edit

end