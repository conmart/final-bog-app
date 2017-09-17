Rails.application.routes.draw do

  get "/creatures" => "creatures#index", as: 'creatures'

end
