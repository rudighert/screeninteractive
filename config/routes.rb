ScreenInteractive::Application.routes.draw do
 resources :screens
 resources :players
 root :to => 'screens#index'
end
