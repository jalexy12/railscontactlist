Rails.application.routes.draw do
  get '/' => "site#index"
  get '/contacts' => "contacts#index"
  get 'contacts/index' => "contacts#index"
  get "/contacts/:id" => "contacts#show"
  get '/' => 'site#home'
end
