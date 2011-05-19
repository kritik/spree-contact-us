Rails.application.routes.draw do

  resources :inquiries, :as => 'contact'
  match "contact", :to => "inquiries#index"

  namespace :admin do
    resources :inquiries
    resource  :inquiries_settings
  end
  
end