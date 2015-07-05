Rails.application.routes.draw do
  get 'status/show'

  get '/status' => 'status#show'

  scope '/api' do
    scope '/v1' do
      scope '/packages' do
        get '/' => 'api_packages#index'
        post '/' => 'api_packages#create'
        scope '/:id' do
          get '/' => 'api_packages#show'
          put '/' => 'api_packages#update'
        end
      end

      scope '/users' do 
        get '/' => 'api_users#index'
        post '/' => 'api_users#create'
        scope '/:id' do
          get '/' => 'api_users#show'
          put '/' => 'api_users#update'
        end
      end
    end
  end

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
