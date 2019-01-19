Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#sorts"

  get "/problems" => "problems#index"
  get "/problems/:problem" => "problems#show"
end
