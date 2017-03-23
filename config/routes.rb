Rails.application.routes.draw do
 post 'helpmate/newrec/' => 'helpmate#createrec'
 get 'helpmate' => 'helpmate#index'
 post 'helpmate' => 'helpmate#identify'
 get 'helpmate/concern' => 'helpmate#concern'
 get 'helpmate/newconcern' => 'helpmate#newconcern'
 post 'helpmate/newconcern' => 'helpmate#createconcern'
 get 'helpmate/newrec/' => 'helpmate#newrec'
 get 'helpmate/getpform' => 'helpmate#getpform'
 get 'helpmate/edit' => 'helpmate#editpform'
 get 'helpmate/register' => 'helpmate#register'
 post 'helpmate/register' => 'helpmate#createuser'
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
