Rails.application.routes.draw do
    root to: 'questions#index'
    resources :surveys do
        resources :questions do
            resources :answers
        end
    end
end
