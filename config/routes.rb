Rails.application.routes.draw do
  root to: 'visitor#index'
  get 'visitor/hard_method'

  mount ActionCable.server => '/cable'
end
