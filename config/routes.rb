Rails.application.routes.draw do
  resources :formula_tintas
  resources :base_tintas
  resources :tintas
  resources :mallas
  resources :tipos_de_lineas
  resources :productos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
