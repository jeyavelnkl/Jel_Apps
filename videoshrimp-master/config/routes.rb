Rails.application.routes.draw do
  resources :audios
  
  # root 'audios#index'
  
  root 'videos#index'
  resources :videos
  get '/videos/:id/like' => 'videos#like'
  get '/videos/:id/dislike' => 'videos#dislike'

  devise_for :users

  resources :users
  get '/mylists/video_list'=> 'mylists#video_list'
  get '/mylists/index'=> 'mylists#index'

  resources :settings, except: [:show, :new, :edit]

  get '/sync_repo/:id', to: 'audios#sync_repo', as: :sync_repo
  get '/stream/:id', to: 'audios#stream', as: :stream
  
  # mount Sidekiq::Web => '/sidekiq'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
