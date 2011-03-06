LoveparadeApp::Application.routes.draw do
  get "users/new"

 	resources :videos

  get "pages/home"

  get "pages/contact"

	match '/contact', :to => 'pages#contact'
	match '/new', :to => 'videos#new'

	match 'mapall', :to => 'pages#mapall'
	match 'map1530', :to => 'pages#map1530'
	match 'map1540', :to => 'pages#map1540'
	match 'map1550', :to => 'pages#map1550'
	match 'map1600', :to => 'pages#map1600'
	match 'map1610', :to => 'pages#map1610'
	match 'map1620', :to => 'pages#map1620'
	match 'map1630', :to => 'pages#map1630'
	match 'map1640', :to => 'pages#map1640'
	match 'map1650', :to => 'pages#map1650'
	match 'map1700', :to => 'pages#map1700'
	match 'map1710', :to => 'pages#map1710'
	match 'map1720', :to => 'pages#map1720'
	match 'map1730', :to => 'pages#map1730'
	match 'map1740', :to => 'pages#map1740'
	match 'map1750', :to => 'pages#map1750'


	match 'addadmin', :to => 'users#new'

	match 'csv', :to => 'videos#indexcsv'
	root :to => 'pages#home'

end
