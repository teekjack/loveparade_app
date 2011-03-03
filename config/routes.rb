LoveparadeApp::Application.routes.draw do
 	resources :videos

  get "pages/home"

  get "pages/contact"

	match '/contact', :to => 'pages#contact'
	match '/new', :to => 'videos#new'

	match 'mapall', :to => 'pages#mapall'
	match 'map1530', :to => 'pages#map1530'
	match 'map1601', :to => 'pages#map1601'
	match 'map1631', :to => 'pages#map1631'
	match 'map1701', :to => 'pages#map1701'
	match 'csv', :to => 'videos#indexcsv'
	root :to => 'pages#home'

end
