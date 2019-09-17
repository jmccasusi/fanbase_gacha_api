Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  # get 'login' => 'user#login'
  post 'user_token' => 'user_token#create'
  resources :group_category_relations
  resources :deck_category_relations
  resources :categories
  resources :decks do
    resources :cards
  end 
  resources :groups do
    resources :rooms do
      resources :messages
    end
  end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
