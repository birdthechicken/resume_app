Rails.application.routes.draw do
 namespace :api do
  get '/students' => 'students#index'
  get '/students/:id' => 'students#show'

  get '/experiences' => 'experiences#index' 
  get '/experiences/:id' => 'experiences#show' 

  get '/educations' => 'educations#index' 
  get '/educations/:id' => 'educations#show'

  get '/skills' => 'skills#index' 
  get '/skills/:id' => 'skills#show'

  get '/capstones' => 'capstones#index' 
  get '/capstones/:id' => 'capstones#show'
 end
end
