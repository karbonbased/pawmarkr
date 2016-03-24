Rails.application.routes.draw do
 root 'dogs#index'
 resources :dogs
 get 'test' => 'dogs#test'
 get 'shelters' => 'dog#shelter'
 get 'shelter/:id' => 'shelter#show'
 resources :maps
end
