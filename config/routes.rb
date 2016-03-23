Rails.application.routes.draw do
 root 'dogs#index'
 resources :dogs
 get 'test' => 'dogs#test'
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