SPapp::Application.routes.draw do
  
  root :to => "home#index"
  
  get "sessions/new", :as => "new_session"
  post "sessions/create", :as => "sessions"

  get "logout" => 'sessions#destroy', :as => "logout"
  
  get "vendors/new", :controller => "vendors", :action => "new", :as => :new_vendor
  get "vendors", :controller => "vendors", :action => "index", :as => :vendors
  post "vendors", :controller => "vendors", :action => "create"
  get "vendors/:id", :controller => "vendors", :action => "show", :as => :vendor
  put "vendors/:id", :controller => "vendors", :action => "update"
  get "vendors/:id/edit", :controller => "vendors", :action => "edit", :as => :vendor_edit
  
  get "passes", :controller => "passes", :action => "index", :as => :passes
  end

  # get "vendor/new"
  # 
  # get "vendor/create"
  # 
  # get "vendor/update"
  # 
  # get "vendor/index"
  # 
  # get "vendor/edit"

  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
