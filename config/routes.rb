Rails.application.routes.draw do
  resources :topics
  root 'welcome#index'
  resources :topics do
    member do
      post 'upvote'
      post 'downvote'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
