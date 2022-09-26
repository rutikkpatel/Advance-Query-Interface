Rails.application.routes.draw do
  resources :designations, except: %i[show]
  resources :employees do
    get 'queries', on: :collection
  end

  root 'employees#index'
end
