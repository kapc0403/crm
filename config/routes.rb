Rails.application.routes.draw do
  
  resources :emials
  resources :visita
  resources :llamadas
  resources :visita
  resources :emails
  resources :llamadas
  resources :productos_por_clientes
  resources :accesosdirectos
  resources :seguimientos
  resources :tiposeguimientos
  resources :estadofacturas
  resources :detallefacturas
  resources :servicios
  resources :facturas
  resources :empresaclientes
  resources :detalle_facturas
  resources :productos
  resources :modelo_personalizados
  resources :proveedors
  resources :welcomes
  resources :ciudads
  resources :departamentos
  
  
  get "detalle_facturas/getproductosdetallefacturabyid/:id", to: "detalle_facturas#getproductosdetallefacturabyid"
  get "detalle_facturas/getserviciosdetallefacturabyid/:id", to: "detalle_facturas#getserviciosdetallefacturabyid"
  delete "detalle_facturas/destroydetallesbyfacturaid/:id", to: "detalle_facturas#destroydetallesbyfacturaid" 
  get "mailers/customer_mailer/factura_email/:id", to: "mailers/customer_mailer#factura_email"
  get "/configinicial", to: "welcomes#new"
  get "/prospectosempresa", to: "empresaclientes#indexprospectos"
  get "/propuestas", to: "facturas#indexpropuestas"
  get "/pedidos", to: "facturas#indexpedidos"
  get "/ordenes", to: "facturas#indexordenes"
  
  get 'changetypecliente/:id' => "empresaclientes#changetypecliente"
  get 'changestatepropuesta/:id' => "facturas#changestatepropuesta"
  get 'changestatepedido/:id' => "facturas#changestatepedido"
  get 'changestateorden/:id' => "facturas#changestateorden"
  get 'changestatefactura/:id' => "facturas#changestatefactura"
  
  
  devise_for :usuarios, controllers: {registrations: "registrations"}
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
