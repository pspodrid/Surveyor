Rails.application.routes.draw do
    root to: 'questions#index'
    resources :surveys do
        resources :questions
    end
end
