Rails.application.routes.draw do
  resources :designations, except: %i[show]
  resources :employees do
    get 'queries', on: :collection
  end

  resources :leave_plans
  root 'employees#index'
end
