Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/characters' => 'characters#index'
    get '/characters/:id' => 'characters#show'
    patch '/characters/:id' => 'characters#update'
    post '/characters' => 'characters#create'
    get '/users/:username/:password_digest' => 'users#show'
    post '/users' => 'users#create'
    delete 'characters/:id' => 'characters#destroy'
end
