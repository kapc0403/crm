Rails.application.routes.draw do
  
  resources :modelo_personalizados
  resources :servicios
  resources :productos
  resources :modelo_personalizados
  resources :proveedors
  resources :proveedors
  resources :persona_clientes
  resources :empresa_clientes
  resources :proveedors
  resources :welcomes
  resources :ciudads
  resources :departamentos
  resources :clientes
  resources :clientes
  resources :e_clientes
  resources :empresas
  resources :clientes
  
  get "/configinicial", to: "welcomes#new"

  devise_for :usuarios
  devise_scope :usuario do
    authenticated :usuario do
      root 'welcomes#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  resources :usuarios
  
end
