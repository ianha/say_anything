SayAnything::Application.routes.draw do
  resources :forums, :only => [ :index, :show ]
  resources :topics
end
