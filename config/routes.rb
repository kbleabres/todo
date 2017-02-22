Rails.application.routes.draw do
  # root to: 'todo_items#index'
  resources :todo_items, only: [:index, :new, :create, :destroy, :update] do
    resources :completions, only: [:create]
  end
end
