scope 'admin', module: 'admin', as: 'admin' do
  get '/', to: 'pages#index', as: 'root'
end