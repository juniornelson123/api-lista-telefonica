Rails.application.routes.draw do
  resources :contatos do
    collection { post :create , via: :options  }
    # via: :options ?

  end

  resources :operadoras do
    collection { post :create , via: :options  }
    # via: :options ?

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
