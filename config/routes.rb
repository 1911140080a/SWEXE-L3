Rails.application.routes.draw do
 
resources :tweets
root 'tweets#index'

get 'tweets/new', to:'tweets#new'

post 'tweets', to:'tweet#create'

delete 'tweets/:id', to:'tweets#destroy'

get 'tweets/:id/edit', to: 'tweets#edit'

patch 'tweets/:id', to: 'tweets#update'

get 'tweets/:id', to: 'tweets#show'

end
