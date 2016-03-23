Rails.application.routes.draw do
 root 'dogs#index'
 resources :dogs
 get 'test' => 'dogs#test'
 resources :maps
end

#   Prefix Verb   URI Pattern              Controller#Action
#     root GET    /                        dogs#index
#     dogs GET    /dogs(.:format)          dogs#index
#          POST   /dogs(.:format)          dogs#create
#  new_dog GET    /dogs/new(.:format)      dogs#new
# edit_dog GET    /dogs/:id/edit(.:format) dogs#edit
#      dog GET    /dogs/:id(.:format)      dogs#show
#          PATCH  /dogs/:id(.:format)      dogs#update
#          PUT    /dogs/:id(.:format)      dogs#update
#          DELETE /dogs/:id(.:format)      dogs#destroy
#     test GET    /test(.:format)          dogs#test
#     maps GET    /maps(.:format)          maps#index
#          POST   /maps(.:format)          maps#create
#  new_map GET    /maps/new(.:format)      maps#new
# edit_map GET    /maps/:id/edit(.:format) maps#edit
#      map GET    /maps/:id(.:format)      maps#show
#          PATCH  /maps/:id(.:format)      maps#update
#          PUT    /maps/:id(.:format)      maps#update
#          DELETE /maps/:id(.:format)      maps#destroy