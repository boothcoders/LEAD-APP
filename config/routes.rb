Rails.application.routes.draw do
  devise_for :users

  root 'static_pages#home'
  get "my_progress" => "static_pages#my_progress"
  get "my_progress_2" => "static_pages#my_progress_2"
  get "about" => "static_pages#about_page"
  get "contact" => "static_pages#contact_page"


  resources :goal_attempts
  resources :goals
  resources :cohorts
  resources :users
  resources :feedbacks
  resources :requests
  resources :interactions

  get "new_interaction" => "interactions#new"
  get "interactions_list" => "interactions#index"
  get "new_feedback_request" => "requests#new"
  get "feedback_give" => "requests#index"
  get "new_feedback_give" => "feedbacks#new"
  get "decline_request" => "requests#decline"
  get "destroy_request" => "requests#destroy"
  get "new_goal_attempt" => "goal_attempts#new"


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
