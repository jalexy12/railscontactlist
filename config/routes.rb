Rails.application.routes.draw do
	resources :contacts do
		resources :phonenumbers
		resources :emails
	end
 
end
