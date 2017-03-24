Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
  	root 'static_page#home'
  end

  unauthenticated :user do
  	devise_scope :user do 
  		root 'static_page#unregistered', as: :unregistered_root
  	end
  		
  	end
  end
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

