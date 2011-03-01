LoveparadeApp::Application.routes.draw do
  get "pages/home"

  get "pages/contact"

	match '/contact', :to => 'pages#contact'
	root :to => 'pages#home'
end
