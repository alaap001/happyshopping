Rails.application.routes.draw do
 
  devise_for :users
root 'home#index'
get 'iphone7plus' , to: 'home#i7plus' ,as: :iphone7plus
get 'iphone6' , to: 'home#i6' ,as: :iphone6
get 'iphone7' , to: 'home#i7' ,as: :iphone7
get  'care' , to: 'home#care' , as: :care
get 'ipad' , to: 'home#ipad' ,as: :ipad
  get 'home/show'
  resources :feedbacks , only: [:new,:create,:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
