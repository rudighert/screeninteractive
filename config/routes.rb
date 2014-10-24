ScreenInteractive::Application.routes.draw do
 resources :screen_show


 root :to => 'screen_show#index'
end
