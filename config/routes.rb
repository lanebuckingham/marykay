Marykay::Application.routes.draw do

  get "accounts/show"
  get "accounts/create_trans"
  get "accounts/destroy_trans"

  resources :products
  # get "products/index"
  # get "products/create"
  # get "products/new"
  # get "products/edit"
  # get "products/show"
  # get "products/update"
  # get "products/destroy"

  resources :customers
  # get "customers/index"
  # get "customers/create"
  # get "customers/new"
  # get "customers/edit"
  # get "customers/show"
  # get "customers/update"
  # get "customers/destroy"

  resources :orders
  # get "orders/index"
  # get "orders/create"
  # get "orders/new"
  # get "orders/edit"
  # get "orders/show"
  # get "orders/update"
  # get "orders/destroy"
  get "orders/order_item_create"
  get "orders/order_item_edit"
  get "orders/order_item_destroy"

  devise_for :users

  resources :dashboard

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root :to => 'home#index'

  # match '/login', to: 'pages#login'

  # match '/success', to: 'pages#success'
  
  # match '/fail', to: 'pages#fail'

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
end
