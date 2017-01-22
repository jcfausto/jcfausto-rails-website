Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/setup', as: 'rails_admin'
  resources :achievements
  resources :projects
  resources :skills

  devise_for :admins, :skip => :registrations

  #Enabling to change password even telling to skip registrations
  as :admin do
    get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'
    patch 'admins' => 'devise/registrations#update', :as => 'admin_registration'
  end

  resources :hero_phrases
  resources :abouts
  root 'pages#home'
end
