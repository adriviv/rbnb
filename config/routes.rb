Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'




   namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :sessions, only: [:create]
      resources :users, only: [:create]

      resource :profile, only: [:show]
      ### !!!!! Change the name of the controller and model to profile ?


      # everyone
      resources :projects, only: [:index, :show] do
        # donor
        resources :pledges, only: [:create, :index]
      end

      resources :initiatives, only: [:index, :show, :create]

      # donor
      resources :pledges, only: [:index]

    end
  end
end


    # GET /profile => profiles#show


    # founder

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

