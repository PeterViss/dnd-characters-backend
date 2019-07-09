Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/characters' => 'characters#index'
    get '/characters/:id' => 'characters#show'
    get '/users/:username' => 'users#show'
end
