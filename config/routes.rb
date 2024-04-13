Rails.application.routes.draw do
  resources :xclones do
    collection do
      post :confirm
    end
  end
end
