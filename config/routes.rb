Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  # get 'login' => 'user#login'
  post 'user_token' => 'user_token#create'

  post 'claim' => 'user_card_relation#claim'

  resources :group_category_relations
  resources :deck_category_relations
  resources :categories
  resources :user_card_relations, :only =>  [:index]
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
