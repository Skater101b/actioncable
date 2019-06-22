Rails.application.routes.draw do
  require 'sidekiq/web'
  get 'update_screen/index'
  get 'update/action', to: 'update_screen#update_screen'
  mount Sidekiq::Web => "/sidekiq_butt"
  mount ActionCable.server => '/cable'
end
