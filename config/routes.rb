Rails.application.routes.draw do
 post 'helpmate/newrec' => 'helpmate#createrec'
 get 'helpmate' => 'helpmate#index'
 post 'helpmate' => 'helpmate#identify'
 get 'helpmate/newrec' => 'helpmate#newrec'
 get 'helpmate/register' => 'users#new'
 get '/helpmate/student/:id' => 'helpmate#student'
 get '/helpmate/staff/:id' => 'helpmate#staff'
 get '/helpmate/error' => 'helpmate#error'
  resources :replies
  resources :conversations
  resources :users
  resources :councilors
  resources :students
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
