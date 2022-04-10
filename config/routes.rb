Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :zip_codes, only: [:index, :show]
    end
  end
end
