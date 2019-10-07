Rails.application.routes.draw do
   root to: 'associates#index'
post 'show', :to => 'associate#show'
  devise_for :users
  get 'welcome/index'
  get 'associates/edit'
  get 'associates/index'
    get  'sessions/new'
    devise_scope :user do
      get 'users/sign_in', to: 'devise/sessions#new'
      get 'users/sign_up', to: 'devise/registrations#new'
      get 'users/sign_out', to: 'devise/sessions#destroy'
    end
resource:associate do
end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
