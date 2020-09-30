Rails.application.routes.draw do
  get '/ui' => 'ui#index'
  get '/ui#' => 'ui#index'
  root "ui#index"
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
