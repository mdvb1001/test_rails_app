Rails.application.routes.draw do
  # Point to the hello method in the application_controller
  root 'pages#home'
  get 'about', to: 'pages#about'
end
