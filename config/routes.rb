Rails.application.routes.draw do
  resources :achievements
  resources :projects
  resources :skills
  devise_for :admins, :skip => :registrations
  resources :hero_phrases
  resources :hero_phrases
  resources :abouts
  root 'pages#home'
end
