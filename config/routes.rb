Rails.application.routes.draw do
  get 'messages/index'
  # SSedit
  root to: "messages#index"
end
