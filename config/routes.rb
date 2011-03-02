LoveparadeApp::Application.routes.draw do
  get "videos/new"

  get "pages/home"

  get "pages/contact"

	get "users/new"

	match '/contact', :to => 'pages#contact'
	match '/new', :to => 'videos#new'
	root :to => 'pages#home'
end
