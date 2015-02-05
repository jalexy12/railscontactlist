Rails.application.routes.draw do
	resources :contacts do
		resources :phonenumbers
		resources :emails
	end
 	get "/contacts/by_letter/:letter" => "contacts#letterindex", as: "contact_by_letter"
 	get "/" => "contacts#index"
end
