Rails.application.routes.draw do

   resources :sounds, :subs, :kicks, :snares, :hats, :claps, only: [:index, :new, :create, :destroy]
   root "sounds#index"

end

# CarrierWaveExample::Application.routes.draw do


#    resources :resumes, only: [:index, :new, :create, :destroy]
#    root "resumes#index"
# end
