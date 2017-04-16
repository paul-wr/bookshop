Rails.application.routes.draw do

  resources :profiles

  get 'site/fiction'

  get 'site/index'

  get 'site/about'
  
  get 'about' => 'site#about'
  
  get 'contact' => 'site#contact'

  get 'site/contact'

  get 'home' => 'site#index'

  get '/cart' => 'cart#index' 
  get '/cart/:id' => 'cart#add'
  get 'clearCart' => 'cart#clearCart' 
  get 'checkout' => 'cart#checkout'
  get '/cart/payment' => 'cart#payment'
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  


  get 'fiction' => 'site#fiction'
  get 'books/fiction' => 'site#fiction'
  get 'site/fiction' => 'site#fiction'
  get 'biography' => 'site#biography'
  get 'books/biography' => 'site#biography'
  get 'site/biography' => 'site#biography'
  get 'health' => 'site#health'
  get 'books/health' => 'site#health'
  get 'site/health' => 'site#health'
  get 'thriller' => 'site#thriller'
  get 'books/thriller' => 'site#thriller'
  get 'site/thriller' => 'site#thriller'
  get 'education' => 'site#education'
  get 'books/education' => 'site#education'
  get 'site/education' => 'site#education'
  get 'mind_body' => 'site#mind_body_spirit'
  get 'books/mind_body' => 'site#mind_body_spirit'
  get 'site/mind_body' => 'site#mind_body_spirit'
  get 'home_garden' => 'site#home_garden'
  get 'books/home_garden' => 'site#home_garden'
  get 'site/home_garden' => 'site#home_garden'
  get 'cooking' => 'site#cooking'
  get 'books/cooking' => 'site#cooking'
  get 'site/cooking' => 'site#cooking'
  


 
  get 'books/index'

  
  resources :books


  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'site#index'

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
