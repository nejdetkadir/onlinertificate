scope 'admin', module: 'admin', as: 'admin' do
  get '/', to: 'pages#index', as: 'root'

  resources :members
  resources :events do
    resources :participants
  end
end