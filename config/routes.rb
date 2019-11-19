Rails.application.routes.draw do

  devise_for :users
   root "artists#index"


   resources :artists do
    resources :songs
   end 

   resources :billboards do 
      member do 
         post :add_song
    resources :songs do
    end 
      end 
   end 
end
