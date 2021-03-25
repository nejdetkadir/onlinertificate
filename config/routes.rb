Rails.application.routes.draw do
  get 'corporates/index'
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

  root to: 'home#index'
  
  authenticate :user do
    draw :admin
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
