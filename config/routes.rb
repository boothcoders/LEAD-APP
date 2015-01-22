Rails.application.routes.draw do
  #devise_for :users

  root 'feedbacks#index'
  # Routes for the Experiment resource:
  # CREATE
  get('/experiments/new', { :controller => 'experiments', :action => 'new' })
  get('/create_experiment', { :controller => 'experiments', :action => 'create' })

  # READ
  get('/experiments', { :controller => 'experiments', :action => 'index' })
  get('/experiments/:id', { :controller => 'experiments', :action => 'show' })

  # UPDATE
  get('/experiments/:id/edit', { :controller => 'experiments', :action => 'edit' })
  get('/update_experiment/:id', { :controller => 'experiments', :action => 'update' })

  # DELETE
  get('/delete_experiment/:id', { :controller => 'experiments', :action => 'destroy' })
  #------------------------------

  # Routes for the Feedback resource:
  # CREATE
  get('/feedbacks/new', { :controller => 'feedbacks', :action => 'new' })
  get('/create_feedback', { :controller => 'feedbacks', :action => 'create' })

  # READ
  get('/feedbacks', { :controller => 'feedbacks', :action => 'index' })
  get('/feedbacks/:id', { :controller => 'feedbacks', :action => 'show' })

  # UPDATE
  get('/feedbacks/:id/edit', { :controller => 'feedbacks', :action => 'edit' })
  get('/update_feedback/:id', { :controller => 'feedbacks', :action => 'update' })

  # DELETE
  get('/delete_feedback/:id', { :controller => 'feedbacks', :action => 'destroy' })
  #------------------------------

  # Routes for the Request resource:
  # CREATE
  get('/requests/new', { :controller => 'requests', :action => 'new' })
  get('/create_request', { :controller => 'requests', :action => 'create' })

  # READ
  get('/requests', { :controller => 'requests', :action => 'index' })
  get('/requests/:id', { :controller => 'requests', :action => 'show' })

  # UPDATE
  get('/requests/:id/edit', { :controller => 'requests', :action => 'edit' })
  get('/update_request/:id', { :controller => 'requests', :action => 'update' })

  # DELETE
  get('/delete_request/:id', { :controller => 'requests', :action => 'destroy' })
  #------------------------------

  # Routes for the Interaction resource:
  # CREATE
  get('/interactions/new', { :controller => 'interactions', :action => 'new' })
  get('/create_interaction', { :controller => 'interactions', :action => 'create' })

  # READ
  get('/interactions', { :controller => 'interactions', :action => 'index' })
  get('/interactions/:id', { :controller => 'interactions', :action => 'show' })

  # UPDATE
  get('/interactions/:id/edit', { :controller => 'interactions', :action => 'edit' })
  get('/update_interaction/:id', { :controller => 'interactions', :action => 'update' })

  # DELETE
  get('/delete_interaction/:id', { :controller => 'interactions', :action => 'destroy' })
  #------------------------------

  # Routes for the Goal resource:
  # CREATE
  get('/goals/new', { :controller => 'goals', :action => 'new' })
  get('/create_goal', { :controller => 'goals', :action => 'create' })

  # READ
  get('/goals', { :controller => 'goals', :action => 'index' })
  get('/goals/:id', { :controller => 'goals', :action => 'show' })

  # UPDATE
  get('/goals/:id/edit', { :controller => 'goals', :action => 'edit' })
  get('/update_goal/:id', { :controller => 'goals', :action => 'update' })

  # DELETE
  get('/delete_goal/:id', { :controller => 'goals', :action => 'destroy' })
  #------------------------------

  # Routes for the Cohort resource:
  # CREATE
  get('/cohorts/new', { :controller => 'cohorts', :action => 'new' })
  get('/create_cohort', { :controller => 'cohorts', :action => 'create' })

  # READ
  get('/cohorts', { :controller => 'cohorts', :action => 'index' })
  get('/cohorts/:id', { :controller => 'cohorts', :action => 'show' })

  # UPDATE
  get('/cohorts/:id/edit', { :controller => 'cohorts', :action => 'edit' })
  get('/update_cohort/:id', { :controller => 'cohorts', :action => 'update' })

  # DELETE
  get('/delete_cohort/:id', { :controller => 'cohorts', :action => 'destroy' })
  #------------------------------

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
