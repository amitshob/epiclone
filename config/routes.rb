Rails.application.routes.draw do
  root :to => "chapters#index"

  # resources :sections do
    resources :lessons
  # end
  #
  resources :chapters do
    resources :sections
  end

end
