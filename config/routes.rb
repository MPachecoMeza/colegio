Rails.application.routes.draw do
  devise_for :usuarios
  devise_for :users
  get 'home/index'
  resources :estudiantes
  resources :cursos
  resources :profesores
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
