Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  
  root to: 'users#index'

  resources :users, only: [:index, :show] do 
    resources :posts, only: [:index, :show, :new, :create, :destroy] do
      resources :comments, only: [:new, :create, :destroy]
      resources :likes, only: [:create]
    end
  end

  get 'api/users/:id/posts' => 'users#api_show', format: 'json'
  get 'api/users/:user_id/posts/:post_id/comments' => 'posts#api_show', format: 'json'
  post 'api/users/:user_id/posts/:post_id/comment' => 'posts#api_create'
end