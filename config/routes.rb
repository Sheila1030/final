Final::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

# Specify a custom home page
  get "/" => "homepage#index"

# Sign-In and Sign-Out

  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'


  # Resource: Users

  # --- Create
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'

  # --- Read
  get "/users" => 'users#index'
  get "/users/:id" => 'users#show'

  # -- Update
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'

  # --- Delete
  delete "/users/:id" => 'users#destroy'


  # Resource: Locations

  # --- Read
  get "/locations" => 'locations#index'
  get "/locations/:id" => 'locations#show'


  # Resource: Activities

  # --- Read
  get "/activities" => 'activities#index'
  get "/activities/:id" => 'activities#show'


  # -- Update
  get "/activities/:id/edit" => 'activities#edit'
  patch "/activities/:id" => 'activities#update'

  # --- Delete
  delete "/activities/:id" => 'activities#destroy'

  # Resource: Types

  # --- Read
  get "/types" => 'types#index'
  get "/types/:id" => 'types#show'

  # --- Delete
  delete "/types/:id" => 'types#destroy'

  # Sign-In and Sign-Out

  get "/logout" => 'sessions#logout'
  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'

  # Resource: Workouts

  # --- Create
  get "/workouts/new" => 'workouts#new'
  post "/workouts" => 'workouts#create'

  # --- Read
  get "/workouts" => 'activities#index'
  get "/workouts/:id" => 'workouts#show'

  # -- Update
  get "/workouts/:id/edit" => 'workouts#edit'
  patch "/workouts/:id" => 'workouts#update'

  # --- Delete
  delete "/workouts/:id" => 'workouts#destroy'




  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
