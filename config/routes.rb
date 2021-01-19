Rails.application.routes.draw do
  # resources :dogs
  # resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/dogs', to: 'dogs#index', as: 'dogs'
  get '/dogs/sort', to: 'dogs#sort', as: 'dogs_sort'
  get '/dogs/:id', to: 'dogs#show', as: 'dog'


  get '/employees', to: 'employees#index', as: 'employees'
  get '/employees/new', to: 'employees#new', as: 'new_employee'
  get '/employess/edit', to: 'employees#edit', as: 'edit_employee'
  get '/employees/:id', to: 'employees#show', as: 'employee'
  post '/employees', to: 'employees#create'
  patch '/employees', to: 'employees#update'
  

end
