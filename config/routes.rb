LoveparadeApp::Application.routes.draw do
 	resources :videos

  get "pages/home"

  get "pages/contact"

	match '/contact', :to => 'pages#contact'
	match '/new', :to => 'videos#new'
	root :to => 'pages#home'
end
