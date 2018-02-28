Rails.application.routes.draw do
  get 'sysadmin' => 'sysadmin/base#index'
  get 'admin' => 'admin/base#index'
  namespace :admin do
    resources :articles
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
