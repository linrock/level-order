# http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root to: "pages#home"

  get "/data-structures" => "pages#data_structures"
  get "/algorithms" => "pages#algorithms"

  get "/sorts" => "algorithms#sorts"
  get "/binary-search" => "algorithms#binary_search"
  get "/binary-tree-traversal" => "algorithms#binary_tree_traversal"

  get "/problems" => "problems#index"
  get "/problems/:problem" => "problems#show"
end
