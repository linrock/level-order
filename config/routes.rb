# http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root to: "pages#home"

  # pages
  get "/algorithms" => "pages#algorithms"
  get "/data-structures" => "pages#data_structures"
  get "/problems" => "pages#problems"

  # algorithms
  get "/sorts" => "algorithms#sorts"
  get "/binary-search" => "algorithms#binary_search"
  get "/binary-tree-traversal" => "algorithms#binary_tree_traversal"

  # data structures
  get "/disjoint-set" => "data_structures#disjoint_set"
  get "/binary-tree" => "data_structures#binary_tree"
  get "/binary-search-tree" => "data_structures#binary_search_tree"
  get "/binary-heap" => "data_structures#binary_heap"

  # problems
  get "/problems/:problem" => "problems#show"
end
