# http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root to: "pages#home"

  # pages
  get "/algorithms" => "pages#algorithms"
  get "/data-structures" => "pages#data_structures"
  get "/problems" => "pages#problems"

  # algorithms
  prefix = "app/views/algorithms/"
  Dir.glob("#{prefix}*.erb").each do |filename|
    ds = filename.gsub(/#{prefix}/, '').gsub(/\.erb/, '')
    get "/#{ds.gsub(/_/, '-')}" => "algorithms##{ds}"
  end

  # data structures
  prefix = "app/views/data_structures/"
  Dir.glob("#{prefix}*.erb").each do |filename|
    ds = filename.gsub(/#{prefix}/, '').gsub(/\.erb/, '')
    get "/#{ds.gsub(/_/, '-')}" => "data_structures##{ds}"
  end

  # problems
  get "/problems/:problem" => "problems#show"
end
