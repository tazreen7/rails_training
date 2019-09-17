Rails.application.routes.draw do
	resources :userinfos
  get 'pages/secret'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'users#new'
   get 'userinfos/userinfo'
	get 'users/new' => 'users#new', as: :new_user
	post 'users' => 'users#create'
	
	# ----- add these lines here: -----
	
	# log in page with form:
	get '/login'     => 'sessions#new'
	
	# create (post) action for when log in form is submitted:
	post '/login'    => 'sessions#create'
	
	# delete action to log out:
	delete '/logout' => 'sessions#destroy'  
  	 get '/sessions/index'
  	# ----- end of added lines -----
end

