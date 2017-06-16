Rails.application.routes.draw do
  devise_for :users, controllers: {
  registrations: "users/registrations",
  omniauth_callbacks: "users/omniauth_callbacks"
}
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'top#index'
  resources :pictures  do
    collection do
      post :confirm
    end
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
