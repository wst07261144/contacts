Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :homes, only: [:index] do
    collection do
      post 'gen_contacts'
    end
  end

end
