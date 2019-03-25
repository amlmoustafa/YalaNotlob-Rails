Rails.application.routes.draw do

  get 'homepage/homeindex'
  get 'home/index'
  devise_for :users, controllers: {
      sessions: 'users/sessions'}

  root to: 'home#index'
  # root to: 'homepage#homeindex'
  resources :orders , only: [:index] do
    resources :details
  root to: "orders#index"

  end




  get '/addGroup', :controller => 'groups', :action => 'add'
  post '/addGroup', :controller => 'groups', :action => 'addgroup'
  get '/addGroupMember', :controller => 'groups', :action => 'groupmember'
  post '/addMember' , :controller =>'groups' , :action =>'addmember'
  resources :groups
  delete 'removemember/:id(.:format)', :to => 'groups#removemember'
  delete 'destroy/:id(.:format)' , :to =>'orders#destroy'
  put 'update/:id(.:format)' , :to =>'orders#update'
  # get 'group/delete' , :controller => 'groups', :action => 'delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
