Rails.application.routes.draw do
  get '/api/v1/zip_codes/:zip_code', to: 'zip_codes#show'

  namespace :api do
    namespace :v1 do
      get 'zip-codes/:zip_code', to: 'zip_codes#show'
    end
  end
end
