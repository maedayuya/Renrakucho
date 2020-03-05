Rails.application.routes.draw do
  root to: 'home#top'

  devise_for :users , controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
     }
  resources :users ,only:[:show]
  resources :posts ,only:[:index,:show]
    resources :children do
      resources :child_posts
    end

  devise_for :admins , controllers: {
        sessions: 'admins/sessions',
        registrations: 'admins/registrations'
    }

  namespace :admins do
  	resources :posts
    resources :class_name
  	resources :children do
      resources :child_posts
    end
  end

  scope module: :admins do
    resources :admins
  end

  get 'home/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
