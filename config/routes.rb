Rails.application.routes.draw do

  get "/creatures" => "creatures#index", as: 'creatures'
  get "/creatures/new" => "creatures#new", as: 'new_creature'
  get "/creatures/:id" => "creatures#show", as: 'creature'
  post "/creatures" => "creatures#create"
  get "/creatures/:id/edit" => "creatures#edit", as: 'edit_creature'
  patch "/creatures/:id" => "creatures#update"

end
