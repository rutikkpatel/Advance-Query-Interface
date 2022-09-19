Rails.application.routes.draw do
  resources :designations, except: %i[show]
end
