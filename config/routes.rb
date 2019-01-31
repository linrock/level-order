# http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root to: "pages#home"

  get "/beta" => "pages#beta"

  # pages
  get "/algorithms" => "pages#algorithms"
  get "/data-structures" => "pages#data_structures"
  get "/problems" => "pages#problems"
  get "/about" => "pages#about"

  %w( algorithms data_structures problems ).each do |type|
    prefix = "app/views/#{type}/"
    files = [
      Dir.glob("#{prefix}*.erb"),
      Dir.glob("#{prefix}*.haml")
    ]
    files.flatten.each do |filename|
      ds = filename.gsub(/#{prefix}/, '').gsub(/\.(erb|haml)/, '')
      get "/#{ds.gsub(/_/, '-')}" => "#{type}##{ds}"
    end
  end
end
