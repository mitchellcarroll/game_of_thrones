Rails.application.routes.draw do
root to: "houses#index"

resources :houses do
  resources :characters
end

end
#  root GET    /                                               houses#index
#     house_characters GET    /houses/:house_id/characters(.:format)          characters#index
#                      POST   /houses/:house_id/characters(.:format)          characters#create
#  new_house_character GET    /houses/:house_id/characters/new(.:format)      characters#new
# edit_house_character GET    /houses/:house_id/characters/:id/edit(.:format) characters#edit
#      house_character GET    /houses/:house_id/characters/:id(.:format)      characters#show
#                      PATCH  /houses/:house_id/characters/:id(.:format)      characters#update
#                      PUT    /houses/:house_id/characters/:id(.:format)      characters#update
#                      DELETE /houses/:house_id/characters/:id(.:format)      characters#destroy
#               houses GET    /houses(.:format)                               houses#index
#                      POST   /houses(.:format)                               houses#create
#            new_house GET    /houses/new(.:format)                           houses#new
#           edit_house GET    /houses/:id/edit(.:format)                      houses#edit
#                house GET    /houses/:id(.:format)                           houses#show
#                      PATCH  /houses/:id(.:format)                           houses#update
#                      PUT    /houses/:id(.:format)                           houses#update
#                      DELETE /houses/:id(.:format)                           houses#destroy
