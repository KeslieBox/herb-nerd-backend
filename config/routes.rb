Rails.application.routes.draw do
  resources :herbs
  # do i need properties routes?? since i really only want to show these as properties of the herbs and not on their own?
  resources :properties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
