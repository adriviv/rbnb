Rails.application.routes.draw do
  root to: 'pages#home'




   namespace :api, defaults: { format: :json } do
    namespace :v1 do

      resource :profile, only: [:show]
      ### !!!!! Change the name of the controller and model to profile ?


      # everyone
      resources :projects, only: [:index, :show] do
        # donor
        resources :pledges, only: [:create]
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

