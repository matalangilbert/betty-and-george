Talker::Application.routes.draw do
  get '/messages/retrieve'
  resources :messages
  root :to => 'messages#index'
  

end
