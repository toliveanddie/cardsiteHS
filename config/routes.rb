Rails.application.routes.draw do
  
#deck_cards controller
  resources :deck_cards
  
# deck controller
  resources :decks

#profile controller
  resources :profiles
  
# users controller
  devise_for :users
  
#card controller
  resources :cards

#welcome controller
  root 'welcome#index'
  get 'welcome/index'
  post '/index', to: 'welcome#index'
  get '/about', to: 'welcome#about'
  get '/druid', to: 'welcome#druid'
  get '/hunter', to: 'welcome#hunter'
  get '/mage', to: 'welcome#mage'
  get '/paladin', to: 'welcome#paladin'
  get '/priest', to: 'welcome#priest'
  get '/rogue', to: 'welcome#rogue'
  get '/shaman', to: 'welcome#shaman'
  get '/warlock', to: 'welcome#warlock'
  get '/warrior', to: 'welcome#warrior'
  get '/neutral', to: 'welcome#neutral'
  
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   

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
