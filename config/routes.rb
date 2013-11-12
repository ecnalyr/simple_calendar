SimpleCalendar::Application.routes.draw do
  resources :work_shifts

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end