Rails.application.routes.draw do
 get 'helpmate' => 'helpmate#index'
  resources :contact_emergs
  resources :other_infos
  resources :parent_infos
  resources :children
  resources :educ_infos
  resources :spouses
  resources :siblings
  resources :pforms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
