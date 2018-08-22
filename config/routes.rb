Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  resources :phones

  # get '/phones' => 'phones#index'
  # get '/phones/new' => 'phones#new'
  # get '/phones/:id' => 'phones#show'
  # get '/phones/:id/edit' => 'phones#edit'
  # patch '/phones/:id' => 'phones#update'
  # post '/phones' => 'phones#create'
  # delete '/phones/:id' => 'phones#destroy'
end
