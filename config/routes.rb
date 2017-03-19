Rails.application.routes.draw do
 post 'helpmate/newrec' => 'helpmate#createrec'
 get 'helpmate' => 'helpmate#index'
 get 'helpmate/newrec' => 'helpmate#newrec'
 get 'cafer/justfer/overadrian' => 'helpmate#newrec'
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
