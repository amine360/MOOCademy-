Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'moos#index'
    get 'moos/new'
    get 'moos/show'
    get 'moos/edit'
    resources :moos 
end
