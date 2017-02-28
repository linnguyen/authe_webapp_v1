Rails.application.routes.draw do
  devise_for :users
  namespace :api do
  	namespace :v1 do
  		devise_scope :user do
  			post 'sessions' => 'session#create', :as => 'login'
  			delete 'sessions' => 'sessions#destroy', :as => 'logout'
  		end
  	end
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
