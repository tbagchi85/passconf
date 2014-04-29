Passconf::Engine.routes.draw do

  resources :password_confirmations, :only => [:index] do
    collection do
      post :password_authentication
      get :password_dialog
    end
  end
end
